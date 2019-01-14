# Dynamic-Width-Collection-View
Demonstrates dynamic collection view width in collection view


var names = ["Jack", "Sparrow", "Giants", "Work"]


var widthSizes = [CGFloat]()

for i in 0..<names.count {
            let label = UILabel()
            label.font = UIFont.systemFont(ofSize: 17)
            label.text = names[i]
            widthSizes.append(label.intrinsicContentSize.width)
            print(widthSizes)
            }
