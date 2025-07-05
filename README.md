# Student Portal

<p>An "One Gate App" for College's student, contains several features, like get reports, transcripts, latest news, update profile, and more.</p>
<p>There are several libraries used in this app, like: </p>
<table>
  <thead>
    <tr>
      <th>Library</th>
      <th>Description</th>
    </tr>
    <tr>
      <td>get</td>
      <td>State management</td>
    </tr>
    <tr>
      <td>dio</td>
      <td>Integrate with API</td>
    </tr>
    <tr>
      <td>flutter_secure_storage</td>
      <td>Save user token for api's authentication</td>
    </tr>
    <tr>
      <td>infinite_scroll_pagination</td>
      <td>Show next page content only scroll down it screen.</td>
    </tr>
    <tr>
      <td>flutter_html</td>
      <td>Read HTML in page</td>
    </tr>
    <tr>
      <td colspan="2">and more (see pubspec.yaml)</td>
    </tr>
  </thead>
</table>
<p>Note: unfortunatelly, it's API is still in local, not deployed in cloud. Contact me if you want me send you it's API (API built using laravel)</p>
<p>These are several screens and it explanation:</p>
<ul>
  <li>
    <b>Splash</b>
    <p>Show splash screen for 2 seconds, then go to onboarding page.</p>
    <img src="./git-img/1-splash.png" style="height:200px; width: 90px; object-fit:cover" />
  </li>
  <li>
    <b>Onboarding</b>
    <p>There are 3 onboarding pages here, these app used for introduce app at glance for user.<br />After these pages, app will redirect to login page.</p>
    <img src="./git-img/2-onboarding.png" style="height:200px; width: 90px; object-fit:cover" />
  </li>
  <li>
    <b>Login</b>
    <p>Check first if user token exist then auto redirect to dashboard page.<br />If not yet, show login page and integrate to API to check is username/password valid or not.</p>
    <img src="./git-img/3-login.png" style="height:200px; width: 90px; object-fit:cover" />
  </li>
  <li>
    <b>Dashboard</b>
    <p>There are 3 main features here: home, news, and profile.<br />User can go to each page using bottom navigation.</p>
    <img src="./git-img/4-dashboard.png" style="height:200px; width: 90px; object-fit:cover" />
  </li>
  <li>
    <b>Schedule</b>
    <p>Show schedules of each days and their details.</p>
    <img src="./git-img/5-schedule.png" style="height:200px; width: 90px; object-fit:cover" />
  </li>
  <li>
    <b>Transcript</b>
    <p>Show transcript report of previous semester.</p>
    <img src="./git-img/6-transcript.png" style="height:200px; width: 90px; object-fit:cover" />
  </li>
  <li>
    <b>Progress</b>
    <p>Show progress report of this semester.<br />See attendance, scores (home work, mid/end test, etc), up to estimating final score.</p>
    <img src="./git-img/7-progress.png" style="height:200px; width: 90px; object-fit:cover" />
  </li>
  <li>
    <b>News</b>
    <p>Show latest news.<br />This feature use infinite-scroll-pagination, so user can go to next page just scroll down it.</p>
    <img src="./git-img/8-news.png" style="height:200px; width: 90px; object-fit:cover" />
  </li>
  <li>
    <b>News Detail</b>
    <p>Read news detail.</p>
    <img src="./git-img/9-news-detail.png" style="height:200px; width: 90px; object-fit:cover" />
  </li>
  <li>
    <b>Profile</b>
    <p>Show profile and update it if user want.<br />There are several inputs like text input, dropdown, up to image picker.</p>
    <img src="./git-img/10-profile.png" style="height:200px; width: 90px; object-fit:cover" />
  </li>
</ul>