# RailJumper

Setting up Rails apps can get tedious -- repeating the same steps and downloading the same packages. This pre-packaged repository aims to reduce setup time and aid in getting off the ground quickly.

### Features
  * User model
  * Session-based log in
  * Site admin
  * Simple navbar
  * Foundation 5-ready

### Setup
1. Clone the repo down: <tt>git clone https://github.com/doshea/rail_jumper.git</tt>
2. Rename the cloned directory: <tt>mv rail_jumper your_app_name</tt>
3. Delete the .git folder inside the repo: <tt>rm -rf .git</tt>
4. Use Replace All (Command + Shift + F in Sublime) within your project to replace the following case-sensitive placeholders with the appropriate names for your application:

  | Placeholder         |          |           Replacement         |
  | :------------: |:-----:|:--------------------:|
  | rail_jumper         |   --> |        your_app_name       |
  | RailJumper          |   --> |         YourAppName        |
  | your_name_here |   --> | your_postgres_username |

5. Rename rail_jumper.js and .css.scss to your_app_name.js and .css.scss
6. Create and migrate the database: <tt>rake db:create db:migrate</tt>
7. Party down!

### Frameworks/Libraries
RailJumper comes bundled with a number of libraries/frameworks to minimize the time you spend downloading and setting up.

#### HTML/CSS/JS Framework
  * [Foundation 5](http://foundation.zurb.com/docs/)
  * [Foundation Icons 3](http://zurb.com/playground/foundation-icon-fonts-3)

#### Javascript Libraries (DISABLED by default)
  * [Underscore.js](http://underscorejs.org/)
  * [Sugar.js](http://sugarjs.com/)
  * [Moment.js](http://momentjs.com/)
  * [Morris.js](http://momentjs.com/)
  * [jQuery UI](https://jqueryui.com/)
  * [d3](http://d3js.org/)
  * [Chart.js](http://www.chartjs.org/)
  * [DataTables](https://datatables.net/)

=====
This README written in [Github Markdown](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)