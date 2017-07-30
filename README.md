# Sinatra and ngrok Tutorial* #

* Sinatra is a lightweight ruby framework. The routes and html are contained in one page.
* ngrok is a webservice that you use to demo your app without deploying it.

##### This tutorial contains four topics:
 
1. <b>How to create a Sinatra app
2. How to connect a separate html file
3. How to demo your app using ngrok
4. How to incorporate interactive params in your Sinatra app</b>

**for Macs. Some instructions may not work for PC.*

##


### How to create a Sinatra app:

<table>
  <tbody>
    <tr>
      <td><b>Step</b></td>
      <td><B>Explanation/Code/Screenshot</b></td>
    </tr>
    <tr>
      <td>1. Install sinatra on your computer. </td>
      <td width=65%><b>Terminal:</b> <br><code> gem install sinatra</code></td>
    </tr>
    <tr>
      <td>2. Create a folder to contain your Sinatra app. Name it whatever you want. </td>
      <td><b>Terminal:</b> <br><code>mkdir my_app_name</code><br>e.g.<br><code>mkdir sinatra</code><br> because I'm calling my app "sinatra."</td>
    </tr>
    <tr>
      <td>3. Create a ruby file in your app folder. </td>
      <td><b>Terminal:</b> <br> <code>touch filename.rb</code><br>e.g.<br><code>touch ruby.rb</code><br>because I'm calling my file "ruby."</td>
    </tr>
    <tr>
      <td>4. Open the ruby file in your editor (e.g. Sublime, Atom, Vim, etc.). Require Sinatra at the top of the file. </td>
      <td><b>Editor:</b> <br><code> require 'sinatra' </code><br> <img src="http://res.cloudinary.com/karenaf/image/upload/v1501429332/minicapstone/001_require.png"><br>This is the central command station of your app. It contains all of your app's routes and html. (unlike in Rails, where your routes and html are in separate folders/files) </td>
    </tr>
    <tr>
      <td>5. Write the action (http request) and define it</td>
      <td><b>Editor:</b><br> 
<pre lang="ruby">
Get '/url' do
	"text that shows up in browser"
end
</pre>
			<img src="http://res.cloudinary.com/karenaf/image/upload/v1501367498/minicapstone/01_route.png"><br>The URL is the name of the action, unlike in Rails, where the action is in the controllers.rb file.
			</td>
    </tr>
    <tr>
      <td>6. Start the server by running this ruby file. </td>
      <td><b>Terminal:</b>
      <br><code>ruby ruby.rb</code>
      <br>If your file is called "routes.rb," you'd type <br><code>ruby routes.rb</code><br><br><img src="http://res.cloudinary.com/karenaf/image/upload/v1501367498/minicapstone/02_start_server.png"><br>We see here that the server has set port 4567
      </td>
    </tr>
    <tr>
      <td>7. Go to local host:4567 in the browser (or whichever port the server told you to use.) </td>
      <td><b>Browser:</b> <br> local host:4567/url <br><br> <img src="http://res.cloudinary.com/karenaf/image/upload/v1501367498/minicapstone/03_local_host.png"> </td>
    </tr>
    <tr>
      <td>8. That's it! Your app is now ready to go. Remember that after making <i>any</i> change or addition to the code, you must restart the server. (unlike in Rails, where you don't have to restart the server to see changes) </td>
      <td><b>Editor:</b><br>Make a change to your code <br> <img src="http://res.cloudinary.com/karenaf/image/upload/v1501367498/minicapstone/04_routes.png"> <br><b>Terminal:</b> <br> ctrl + c (to stop server) <br><br> <b>Terminal:</b> <br> <code>ruby ruby.rb </code>(to start server)<br><br> <img src="http://res.cloudinary.com/karenaf/image/upload/v1501367498/minicapstone/05_restart_server.png">  </td>
    </tr>
  </tbody>
</table>



