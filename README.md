UIView-viewController-property
==============================

UIView category that gives back the corresponding UIViewController for each UIView (and descendant)

Whenever you create a new control or a descendant of UIView and want for example to display a modal dialog or push a ViewController to the Navigation Controller, you need a reference to the corresponding UIViewController, where the view is placed on.

This category adds the property viewController to each and every UIView/UIControl ... that´s it ;-)