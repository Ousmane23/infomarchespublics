 <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-primary ">
      <div class="container">
        <a class="navbar-brand mb-0 h1" href="index.php"><img src="images/logos.png"  height="40"></a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link font-weight-bold mb-0 h5  active" href="about-us.php">Presentation</a>
            </li>
                 <li class="nav-item <?php if($page=="index.php"){echo "active";} ?> ">
              <a class="nav-link font-weight-bold mb-0 h5" href="index.php">Offre</a>
            </li>
             <li class="nav-item ">
              <a class="nav-link font-weight-bold mb-0 h5" href="contact-us.php">Contacts</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>