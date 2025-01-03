# NotifyX

NotifyX is a Flutter package designed to display error states and other notifications with a modern and visually appealing user interface. You can create informative alerts and notifications enriched with color codes and icons. It offers customizable buttons, titles, and description areas for every scenario. NotifyX is the perfect solution to elevate the user experience of your application.

## Install the Package


Add the following line to your pubspec.yaml file:

    dependencies:
        notifyx: ^1.0.0

Then, run the following command in the terminal to install the package:

    flutter pub get

### Usage

The video demonstrates the usage of the NotifyX package and showcases different alert types (success, error, info, warning, etc.) step by step. NotifyX allows you to create modern and customizable alerts to enhance the user experience in your Flutter projects.

https://github.com/user-attachments/assets/0811d793-f2cd-4eb5-b7a6-6de0cfe7173b

```
onTap: () {
                  showAnimatedAlert(
                      context: context,
                      alertWidget: RichNotifyXWidget(
                        type: AlertEnumTypes.successSoft,
                        title: 'Example Title',
                        description:
                            'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
                      ));
                },
```
With some parameters, you can fully customize the alert to fit the needs of your project.

```
onTap: () {
  showAnimatedAlert(
    context: context,
    alertWidget: RichNotifyXWidget(
      type: AlertEnumTypes.successSoft,
      title: 'Example Title',
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
    ),
    duration: const Duration(seconds: 3), // Duration the alert remains visible
    animationDuration: const Duration(milliseconds: 700), // Animation duration
    topPadding: 50.0, // Top padding
    leftPadding: 16.0, // Left padding
    rightPadding: 16.0, // Right padding
  );
},
```
#### Use as card widget

NotifyX not only allows you to display animated alerts but also enables you to use alerts as a static widget. This makes it easy to show an alert in a fixed position on a screen or a page. Below is an example of how to use NotifyX as a static widget:

<img src='https://github.com/user-attachments/assets/77a00c2f-cd02-45f7-a67b-3b0c55be6abc' width='400'>

``` <Widget>[
              RichNotifyXWidget(
                type: AlertEnumTypes.infoSolid,
                title: 'Lorem Ipsum',
                description:
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
              ),
              const SizedBox(
                height: 12,
              ),
              RichNotifyXWidget(
                type: AlertEnumTypes.errorSolid,
                title: 'Lorem Ipsum',
                description:
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
              ),
              const SizedBox(
                height: 12,
              ),
              RichNotifyXWidget(
                type: AlertEnumTypes.primarySolid,
                title: 'Lorem Ipsum',
                description:
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
              ),
              const SizedBox(
                height: 12,
              ),
              RichNotifyXWidget(
                type: AlertEnumTypes.warningSolid,
                title: 'Lorem Ipsum',
                description:
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
              ),
              const SizedBox(
                height: 12,
              ),
              RichNotifyXWidget(
                type: AlertEnumTypes.successSolid,
                title: 'Lorem Ipsum',
                description:
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
              ),
              const SizedBox(
                height: 12,
              ),
              RichNotifyXWidget(
                type: AlertEnumTypes.infoSoft,
                title: 'Lorem Ipsum',
                description:
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
              ),
              const SizedBox(
                height: 12,
              ),
              RichNotifyXWidget(
                type: AlertEnumTypes.errorOutlined,
                title: 'Lorem Ipsum',
                description:
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
              )
            ],
```

#### Add custom link button

With NotifyX, you can make your alerts more interactive by adding customizable link buttons. The example below demonstrates how to include a link button inside an alert:

<img src='https://github.com/user-attachments/assets/271c80da-306e-4e0a-a9ad-92d2e9ab13d3' width='400'>

```
 <Widget>[
              RichNotifyXWidget(
                type: AlertEnumTypes.infoSoft,
                title: 'Lorem Ipsum',
                description:
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
                linkButton: LinkButtonModel(onTap: () {}, title: 'Link Button'),
              ),
              const SizedBox(
                height: 12,
              ),
              RichNotifyXWidget(
                type: AlertEnumTypes.primaryOutlined,
                title: 'Lorem Ipsum',
                description:
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
                linkButton: LinkButtonModel(onTap: () {}, title: 'Link Button'),
              ),
              const SizedBox(
                height: 12,
              ),
              RichNotifyXWidget(
                type: AlertEnumTypes.errorSolid,
                title: 'Lorem Ipsum',
                description:
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
                linkButton: LinkButtonModel(onTap: () {}, title: 'Link Button'),
              ),
            ]
```

#### Custom properties

The NotifyX widget offers a variety of properties to help you fully customize your alerts. Below are the supported properties and their descriptions:

* <b>type (AlertEnumTypes, required)</b>: Specifies the type of alert. For example: success, error, info, warning, etc.
* <b>title (String?)</b>: The title text of the alert. Optional.
* <b>description (String?)</b>: The description text of the alert. Optional.
* <b>titleTextStyle (TextStyle?)</b>: Allows you to define a custom style for the title text.
* <b>descriptionTextStyle (TextStyle?)</b>: Allows you to define a custom style for the description text.
* <b>suffixIcon (Widget?)</b>: Adds a custom icon or widget to the right side of the alert.
* <b>hasCancelIcon (bool)</b>: Controls whether the cancel (close) icon is visible. Defaults to true.
* <b>cancelOnTap (void Function()?)</b>: Defines the action to be performed when the cancel icon is tapped. Optional.
* <b>linkButton (LinkButtonModel?)</b>: Allows you to add a customizable link button to the bottom of the alert.

#### Some screenshots

<img src='https://github.com/user-attachments/assets/97011925-99c6-46bc-9578-799e7a730134' width='400'>


## Release History

* 1.0.0
    * Initial release of NotifyX.
    * Added dynamic and customizable alert components.
    * Supports various alert types (success, error, info, warning).
    * Includes options for title, description, icon, and custom link buttons.
    * Provides an elegant and animated alert experience.


## License

This project is licensed under the MIT License. See the [LICENSE](./LICENSE) file for details.
