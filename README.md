# <a href="https://github.com/KarenAF/first_Sinatra_app">Sinatra and ngrok Tutorial</a>* #
(https://github.com/KarenAF/first_Sinatra_app)

* Sinatra is a lightweight ruby framework. The routes and html are contained in one page.
* ngrok is a webservice that you use to demo your app without deploying it.

##### This tutorial contains four topics:
 <b>
 
1. How to create a Sinatra app
2. How to connect a separate html file
3. How to demo your app using ngrok
4. How to incorporate interactive params in your Sinatra app

</b>

**for Macs. Some instructions may not work for PC.*

##


### 1. How to create a Sinatra app:

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
      <td>3. Create a <a href="https://github.com/KarenAF/first_Sinatra_app/blob/master/ruby.rb"> ruby file </a> in your app folder. </td>
      <td><b>Terminal:</b> <br> <code>touch filename.rb</code><br>e.g.<br><code>touch ruby.rb</code><br>because I'm calling my file "ruby."</td>
    </tr>
    <tr>
      <td>4. Open the ruby file in your editor (e.g. Sublime, Atom, Vim, etc.). Require Sinatra at the top of the file. </td>
      <td><b>Editor:</b> <br><code> require 'sinatra' </code><br> <img src="http://res.cloudinary.com/karenaf/image/upload/v1501429332/minicapstone/001_require.png"><br>This is the central command station of your app. It contains all of your app's routes and html. (unlike in Rails, where your routes and html are in separate folders/files)<br><br><img src="http://res.cloudinary.com/karenaf/image/upload/v1501452661/01_02_folders.png"> </td>
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
      <td>7. Go to localhost:4567 in the browser (or whichever port the server told you to use.) </td>
      <td><b>Browser:</b> <br> localhost:4567/url <br><br> <img src="http://res.cloudinary.com/karenaf/image/upload/v1501367498/minicapstone/03_local_host.png"> </td>
    </tr>
    <tr>
      <td>8. That's it! Your app is now ready to go. Note that after making <i>any</i> change or addition to the code, you must restart the server. (unlike in Rails, where you don't have to restart the server to see changes) </td>
      <td><b>Editor:</b><br>Make a change to your code <br> <img src="http://res.cloudinary.com/karenaf/image/upload/v1501367498/minicapstone/04_routes.png"> <br><b>Terminal:</b> <br> ctrl + c (to stop server) <br><br> <b>Terminal:</b> <br> <code>ruby ruby.rb </code>(to start server)<br><br> <img src="http://res.cloudinary.com/karenaf/image/upload/v1501367498/minicapstone/05_restart_server.png">  </td>
    </tr>
  </tbody>
</table>


### 2. How to connect a separate HTML file:

<table>
  <tbody>
    <tr>
      <td>1. Create a folder called <a href="https://github.com/KarenAF/first_Sinatra_app/tree/master/views"> views </a> in your app's root folder, then create a .erb file in the views folder. </td>
      <td width=65%><b>Editor:</b><br>Sinatra>views>separate_file.erb <b><img src="http://res.cloudinary.com/karenaf/image/upload/v1501367498/minicapstone/06_views_folder.png"> </td>
    </tr>
    <tr>
      <td>2. Connect the html file in your root app file. Write the html contents of the webpage into the erb file. </td>
      <td><b>Editor:</b><br> <i>in ruby.rb:</i><br><code>erb :separate_file</code><br><Br><i>in separate_file.erb:</i></br><code>In the jungle</code><br><br><img src="http://res.cloudinary.com/karenaf/image/upload/v1501367499/minicapstone/07_separate_file_sublime.png"> </td>
    </tr>
    <tr>
      <td>3. Restart your server, then go to the browser and type the url of your new route to make sure it is working.</td>
      <td><b>Browser:</b><br>localhost:4567/jungle<br><img src="http://res.cloudinary.com/karenaf/image/upload/v1501367499/minicapstone/08_browser.png"> </td>
    </tr>
  </tbody>
</table>

<br>
<br>
### 3. How to demo your app using ngrok:

<table>
  <tbody>
    <tr>
      <td>1. Download and install ngrok</td>
      <td>Follow the instructions for download at <a href="https://ngrok.com/download">https://ngrok.com/download</a>. Then do the following:
<br><br><b>Terminal:</b><br>In a separate terminal tab,<br>
<code> cd /usr/local/bin</code><br><code>ln -s /Applications/ngrok ngrok</code>
</td>
    </tr>
    <tr>
      <td>2. Start your Sinatra app</td>
      <td><b>Terminal:</b><br>cd(change directory) into your Sinatra app. Restart Sinatra server. </td>
    </tr>
    <tr>
      <td>3. Start ngrok</td>
      <td><b>Terminal:</b><br>Type "ngrok http" + whatever port your sinatra server is on.<br><code>ngrok http 4567</code><br><br>You will see the following info blob pop up in your terminal:<br><img src="http://res.cloudinary.com/karenaf/image/upload/v1501367500/minicapstone/09_ngrok.png"><br>Notice the ngrok forwarding address. </td>
    </tr>
    <tr>
      <td>4. Your users will use the ngrok forwarding address</td>
      <td>This is the ngrok forwarding address from the above blob: <br><span style="background-color: #FFFF00">Forwarding <b>http://6852f32e.ngrok.io </b> -> localhost:4567 </span> <br>The part in bold is the important part. That is what we will give to the user.
<br>As such,<br>
User types any of the following in their <b>browser</b>:
<br><b>http://6852f32e.ngrok.io</b>/jungle
<br><b>http://6852f32e.ngrok.io</b>/hippo
<br><b>http://6852f32e.ngrok.io</b>/giraffe
<br>
<br>User's browser will look like:<br><img src="http://res.cloudinary.com/karenaf/image/upload/v1501367499/minicapstone/10_users_browser.png"> </td>
    </tr>
  </tbody>
</table>

<br>
<br>

### How to incorporate interactive params in your Sinatra app:

<table>
  <tbody>
    <tr>
      <td>1. Add params to route action</td>
      <td>Set a global variable equal to params[:input].<br><br><b>Editor:</b><br><i>in the root file:</i><br><code>@message = params[:message]
</code><br><br><img src="http://res.cloudinary.com/karenaf/image/upload/v1501449663/10_2_params.png"><br>Note: @message and :message can be called different things. The user will be typing ?message="blabla" in their browser address bar, and that is associated with :message. @message is the name of the variable you're setting equal to the user's param :message of "blabla". You will see this demonstrated below, in step 4. </td>
    </tr>
    <tr>
      <td>2. Write the params variable in the html, wherever your html for the webpage is.</td>
      <td>If your html is in a separate html file, then put the variable name (e.g. @message) in erb tags (embedded ruby tags): <%= %> <br><br>Editor:</b><br><code><%=@message%></code><br><img src="http://res.cloudinary.com/karenaf/image/upload/v1501450013/10_3_erb_params.png"> </td>
    </tr>
    <tr>
      <td>3. Restart Sinatra server.<br><br> Restart ngrok server.<br></td>
      <td>ngrok will give you a new forwarding address to use. Your old one is now obsolete.<br><img src="http://res.cloudinary.com/karenaf/image/upload/v1501367500/minicapstone/11_ngrok_new_server.png"><br>New ngrok forwarding address is <b>8ca28b37.ngrok.io</b> </td>
    </tr>
    <tr>
      <td>4. User uses your app</td>
      <td> User types in the forwarding address + url + their input<br><br><b>user's browser:</b><br>8ca28b37.ngrok.io/jungle<span style="background-color: #FFFF00">?message=the_mighty_jungle</span>
<br>8ca28b37.ngrok.io/jungle<span style="background-color: #FFFF00">?message=blablabla</span>
<br>8ca28b37.ngrok.io/jungle<span style="background-color: #FFFF00">?message=the lion sleeps</span><br></td>
    </tr>
    <tr>
      <td>5. User's input will show up on page</td>
      <td><img src="http://res.cloudinary.com/karenaf/image/upload/v1501367500/minicapstone/12_user_params_browser.png"> </td>
    </tr>
  </tbody>
</table>