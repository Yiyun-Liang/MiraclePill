# Swapping Screens

A small Swift application to learn the basics of swapping screens.

# Screenshots

![Segues](https://github.com/Yiyun-Liang/Swift-Miniprojects/blob/master/SwappingScreens/Screenshots/segues.png)

# Random Notes
+ Multiple View Controllers
 + change the name of the view controller class in the code and in the file tree, and change the name in Main.storyboard by clicking on ViewController, clicking on the "newspaper" icon in Utilities, and changing the Class name.
 + when creating a new VC file, remember to drag and drop a new view controller in Main.storyboard, and change the Class name in Utilities as well.
+ Segues
 + do not use several buttons referencing back and forth to different view controllers.
 + instead, reference only forward and add IBAction to the back button, for example:
<code>
@IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
}
</code>
+ Alternative way of triggering segues (generic segue）
 + steps: add a view controller(change class name) and a new VC file, ctrl+drag an arrow from one VC to another VC on the VC tree of scenes.
 + click on the segue, change identifier on the right hand side.
 + add code to swap screens programmatically, we are also able to pass data between screens through code.