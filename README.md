# LayerKit

Have fun with [CALayers](https://developer.apple.com/documentation/quartzcore/calayer)!

## Example

```swift
let bounds = view.bounds

let width: CGFloat = bounds.width - 32
let height: CGFloat = bounds.height - 32
let x: CGFloat = 16
let y: CGFloat = 16

view.layer
    .background(color: UIColor.cyan.cgColor)
    .embed {
        Layer(backgroundColor: UIColor.red.cgColor)
            .frame(x: x, y: y, width: width, height: height)
            .corner(radius: 32)
            .masked(corners: [.layerMaxXMaxYCorner, .layerMaxXMinYCorner])
            .embed {
                Layer(backgroundColor: UIColor.gray.cgColor)
                    .frame(x: 50, y: 400, width: 100, height: 30)
                    .corner(radius: 16)
            }
    }
```
