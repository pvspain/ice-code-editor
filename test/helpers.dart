library ice_test_helpers;

import 'dart:html';
import 'package:unittest/matcher.dart';

class FakeCompleter {
  then(cb) => cb();
}

click(String selector, {text}) {
  if (text == null) {
    query(selector).click();
  }
  else {
    queryAll(selector).
      firstWhere((e)=> e.text==text).
      click();
  }

  return new FakeCompleter();
}

typeIn(String text)=>  document.activeElement.value = text;

hitEnter()=> type(13);
hitEscape()=> type(27);

type(int charCode) {
  document.activeElement.dispatchEvent(
    new KeyboardEvent(
      'keyup',
      keyIdentifier: new String.fromCharCode(charCode)
    )
  );
}


get elementsAreEmpty =>
  new ElementListMatcher(isEmpty);

get elementsArePresent =>
  new ElementListMatcher(isNot(isEmpty));

elementsContain(Pattern content) =>
  new ElementListMatcher(contains(matches(content)));

elementsDoNotContain(Pattern content) =>
  new ElementListMatcher(isNot(contains(matches(content))));

class ElementListMatcher extends CustomMatcher {
  ElementListMatcher(matcher) :
      super("List of elements", "Element list content", matcher);

  featureValueOf(elements) => elements.map((e)=> e.text).toList();
}
