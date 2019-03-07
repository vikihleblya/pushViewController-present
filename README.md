# pushViewController() or present()?

## pushViewController 
```swift
func pushViewController(_ viewController: UIViewController, animated: Bool)
```
Works with UINavigationController, so before calling this method you need to embed your VC into NavigationController. Supports "back" button to navigate between VC's. Get's the top ViewController on the navigation stack.

## present
```swift
func present(_ viewControllerToPresent: UIViewController, animated flag: Bool, completion: (() -> Void)? = nil)
```
Present's ViewController is superimpose on top of current ViewController. 

## How it works
![](screenshot.gif)
