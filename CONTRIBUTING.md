![ContributingHeader](https://github.com/BolisettySujith/Awesome-Flutter-Widgets/assets/73323807/aa0315a2-bbe9-4caf-9af9-3c35dd05a0cd)

## Contributing Guidelines

When contributing to this repository, please first discuss the change you wish to make via issue.

## Basic Template

- **Home Page**
    
    In this page all the widgets are shown in a list. They will be displayed as shown in the image above.

- **Widget Space**

    This page is the space where you can add the widget. By clicking on a particular widget from the home page, you will be redirected to that particular widget space.

<img src="https://github.com/BolisettySujith/Awesome-Flutter-Widgets/assets/73323807/9e96e52e-696a-4a5f-87a5-c5c2c16743dd">

## How to add a widget?
1. First fork the repo and clone it to your local machine.

   ```
   $ git clone https://github.com/YOUR-GITHUB-USERNAME/Awesome-Flutter-Widgets.git
   ```
2. Open Awesome-Flutter-Widgets project in your favorite editor (VS Code, Android Studio, etc)
   
3. To install the dependencies run the following command in the terminal.

    ```
    $ flutter pub get
    ```

4.  Connect your Android emulator or your mobile device to your computer.

5. Create a `.dart` file in the `lib/Components` folder with the name of the widget you want to add and include the code for the widget.

6. Go to the `lib/Navigation/navigation.dart` file and add the following code in the `routes` map.

    ```
    '/WIDGET_ROUTE_NAME': (context) => WidgetName(),
    ```
    Replace `WIDGET_ROUTE_NAME` with the name of the route you want to give to the widget and `WidgetName` with the name of the widget you created in the previous step.

6. Go to the `lib/Utils/widgets_data.dart` file and initialize a `WidgetDetailModel object` with the name of the widget you want to add.

    ```dart
    WidgetDetailsModel widget_name = WidgetDetailsModel(
        "WIDGET_NAME",
        "WIDGET_DESCRIPTION",
        "assets/images/WIDGET_DEMO_IMAGE",
        "/WIDGET_ROUTE_NAME",
    );
    ```
    Replace 
    - `WIDGET_NAME` with the name of the widget you want to add. 
    - `WIDGET_DESCRIPTION` with the description of the widget you want to add.
    - `WIDGET_DEMO_IMAGE` with the name of the image you want to add for the widget.
    (Note: You can take the snapshot of the widget after successfully running the code and save it in the `assets/images` folder.)
    - `WIDGET_ROUTE_NAME` with the name of the route you gave to the widget in the previous step.
7. Add the initialized object name to the `widgetsList` in the `lib/Utils/widgets_data.dart` file.

    ```dart
    List<WidgetDetailsModel> widgetList = [..,widget_name,..];
    ```

8.  Build the application in your device by clicking **Run** <img src="https://www.iconsdb.com/icons/preview/green/play-xxl.png" alt="run" width="2%"/> button or run the following in terminal.
    ```
    $ flutter run
    ```
9. Check if the widget is added to the home page and is working properly.
10. Make a new branch and commit the changes.
    ```
    $ git checkout -b <branch_name>
    $ git add .
    $ git commit -m "Added <widget_name> widget"
    ```
11. Push the changes to your forked repo.
    ```
    $ git push origin <branch_name>
    ```
12. Create a pull request to the main repo.

<p align = "center">
Thank you for your valuable contribution! 🎉
</p>
