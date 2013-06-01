part of ice_test;

remove_dialog_tests() {
  group("Remove Dialog", (){
    var editor;

    setUp(()=> editor = new Full(enable_javascript_mode: false));
    tearDown(() {
      document.query('#ice').remove();
      new Store().clear();
    });

    test("can open the remove dialog", (){
      helpers.click('button', text: '☰');
      helpers.click('li', text: 'New');
      helpers.typeIn('My Old Project');
      helpers.click('button', text: 'Save');

      helpers.click('button', text: '☰');
      helpers.click('li', text: 'New');
      helpers.typeIn('My New Project');
      helpers.click('button', text: 'Save');

      helpers.click('button', text: '☰');
      helpers.click('li', text: 'Remove');

      helpers.click('button', text: '☰');
      helpers.click('li', text: 'Open');

      expect(
        queryAll('li'),
        helpers.elementsDoNotContain('My New Project')
      );
    });
  });
  // TODO: alert are you sure?
  // TODO: open previous project on remove
  // TODO: open default project when no more projects exist
}
