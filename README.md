![Header](https://github.com/BolisettySujith/Awesome-Flutter-Widgets/assets/73323807/c0186509-5425-4485-b87c-ee38d81acd98)

## Here are some awesome Flutter widgets

#### Table of the content 📑
1. Image Color Filter 
2. Flip Card Widget
3. Image Viewer 3D
4. Interactive Viewer Widget
5. Reorderable List View Widget
6. Cupertino Context Menu Widget
7. Tabular View Widget
8. Amazon 'Swipe to place your order' UI
9. Stepper Widget
10. Confetti Widget 
11. List Wheel Scroll View Widget
12. Custom Banner Widget

### Awesome Widget's Preview 😎

<table>
    <tr>
    <td align="center">Image Color Filter</td>
    <td align="center">FlipCard</td>
    <td align="center">Image Viewer 3D</td>
    </tr>
    <tr>
    <td><img src="https://github.com/BolisettySujith/Awesome-Flutter-Widgets/assets/73323807/c62ee1ae-b186-4f79-ae34-550d57eafefd"></td>    
    <td><img src="https://github.com/BolisettySujith/Awesome-Flutter-Widgets/assets/73323807/e460388d-5bdc-46df-a251-f358363fb35c"></td>
    <td><img src="assets\gifs\image_viewer_3d.gif"></td>
    </tr>
    <tr>
    <td align="center">Interactive Viewer</td>
    <td align="center">Re-orderable List View</td>
    <td align="center">Cupertino Context Menu</td>
    </tr>
    <tr>
    <td><img src="https://github.com/BolisettySujith/Awesome-Flutter-Widgets/assets/73323807/10a7c8ca-b98d-4d8e-8935-588c0c4a92fa"></td>
    <td><img src="https://github.com/BolisettySujith/Awesome-Flutter-Widgets/assets/73323807/f49d1a11-2051-4dad-8527-ad5ad1882474"></td>
    <td><img src="https://github.com/BolisettySujith/Awesome-Flutter-Widgets/assets/73323807/75224fa7-ec87-4a0e-8060-0483d77290a0"></td>
    </tr>
    <tr>
    <td align="center">Tabular View</td>
    <td align="center">Swipe to place order</td>
    <td align="center">Stepper</td>
    </tr>
    <tr>
    <td><img src="assets\gifs\tabular_view.gif"></td>
    <td><img src="https://github.com/BolisettySujith/Awesome-Flutter-Widgets/assets/73323807/bb2b65e5-2eda-47dc-8b10-bd335e4185b6"></td>
    <td><img src="https://github.com/BolisettySujith/Awesome-Flutter-Widgets/assets/73323807/7cee4c45-6acb-4ea8-97ff-4554adea9dc4"></td>
    </tr>
    <tr>
    <td align="center">Confetti</td>
    <td align="center">List Wheel Scroll View</td>
    <td align="center">Custom Banner</td>
    <td align="center"></td>
    </tr>
    <tr>
    <td><img src="assets\gifs\confetti.gif"></td>
    <td><img src="https://github.com/BolisettySujith/Awesome-Flutter-Widgets/assets/73323807/3795f18c-86eb-4fbe-9d06-dede56e94305"></td>
    <td><img src="https://github.com/BolisettySujith/Awesome-Flutter-Widgets/assets/73323807/f55d1d84-a446-463e-9c44-c8e1f0bf3a39"></td>
    </tr>
</table>

## Overflow
### 1. Wanna get rid of Widgets Overflowed while placing them in a Row ?
<img src="https://github.com/BolisettySujith/Awesome-Flutter-Widgets/assets/73323807/3bf41ad9-a77b-4600-9ce5-45ea3230f06c">

<details><summary>Solution</summary>
<p>

### Just Wrap them 😎
<img src="https://github.com/BolisettySujith/Awesome-Flutter-Widgets/assets/73323807/08d6a17a-02ad-43d9-96d6-549bb15b37e2">

**Use**
```dart
Wrap(
    spacing: 5.0,
    runSpacing: 5.0,
    children: [
        Container(color: Colors.yellow, height: 100, width: 100,),
        Container(color: Colors.green, height: 100, width: 100,),
        Container(color: Colors.blue, height: 100, width: 100,),
        Container(color: Colors.red, height: 100, width: 100,),
        Container(color: Colors.pink, height: 100, width: 100,),
        Container(color: Colors.orange, height: 100, width: 100,),
        Container(color: Colors.amber, height: 100, width: 100,)
    ],
)
```
</p>
</details>

### 2. Wanna get rid of Text overfitted when placing it inside a container smaller than it's size ?
<img src="https://github.com/BolisettySujith/Awesome-Flutter-Widgets/assets/73323807/a8f22dd3-e96f-4c4f-a537-e5022360ec3d">

<details><summary>Solution</summary>
<p>

### Just Fit that 😎
<img src="https://github.com/BolisettySujith/Awesome-Flutter-Widgets/assets/73323807/5d9f7f28-88c5-4028-a502-bcb672c14f7b">

**Use**
```dart
Container(
    height: 150,
    width: 400,
    color: Colors.cyan,
    child: const FittedBox(
        fit: BoxFit.contain,
        child:  Text(
            "Hello",
            style: TextStyle(
                fontSize: 200
            ),
        ),
    ),
)
```
</p>
</details>


## Looking to contribute 📝 ?
Please read [CONTRIBUTING.md](/CONTRIBUTING.md) before writing a pull request.


*<p align="center">Show some support by **⭐ing** this repository 😇</p>*

**<p align="center">Happy Coding 😎</p>**
