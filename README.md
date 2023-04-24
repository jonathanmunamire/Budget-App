<a name="readme-top"></a>

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
    - [🚀 Live Demo](#live-demo)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
  <!-- - [Deployment](#triangular_flag_on_post-deployment) -->
- [👤 Author](#author)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
<!-- - [🙏 Acknowledgements](#acknowledgements)
- [❓ FAQ](#faq) -->
- [📝 License](#license)

# 📖 Budget App <a name="about-project"></a>

A mobile web application where you can manage your budget: you have a list of transactions associated with a category, so that you can see how much money you spent and on what.

## 🛠 Built With <a name="built-with"></a>

The Recipe App was built with:

- Ruby On Rails
- PostgreSQL

### Tech Stack <a name="tech-stack"></a>

<!-- <details>
  <summary>Client</summary>
  <ul>
    <li><a href="https://reactjs.org/">React.js</a></li>
  </ul>
</details> -->

  <ul>
    <li><a href="https://rubyonrails.org/">Rails</a></li>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
    <li><a href="https://getbootstrap.com/">Bootstrap</a></li>
    <li><a href="https://www.javascript.com/">JavaScript</a></li>
  </ul>

### Key Features <a name="key-features"></a>

- **Authentication**
- **Table Logic**

### Live Demo <a name="live-demo"></a>

[Live Demo](https://budget-app-ti47.onrender.com/)

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

- Ruby 2.7.0 or later
- Rails 6.0 or later
- PostgreSQL

After installing Ruby, run the following command to install rails.-

```sh
 gem install rails
```

### Setup

- Clone this project on your local machine using the following command in your terminal:

- Make sure to add .env file on your root directory and setup your .env file with your postgres username and password!

```sh
  git clone https://github.com/jonathanmunamire/Budget-App.git
  bundle install
  rails s
```

### Install

Run the following command to install all project's dependencies:

```sh
  cd Budget-App
  bundle install
  node install
```

### Running the app

rails db:create:all
rails db:migrate
rails db:seed ### to populate the database with some sample data.
rails s ## to start the server.
http://localhost:3000 ## app link in the browser

### Usage

`bundle install`

Next setup your .env so that you can create your dbs. Then:

`rails db:create`

`rails db:migrate`

`rails db:seed`

`rails c` --> To run rails console

`rails s` --> To run rails server

### Run tests

- Make sure to add data to the test db or create dummy data on the test files inside rspec folder.

`bundle install`

`rspec spec`

## 👤 Author <a name="author"></a>

👤 **Jonathan Munamire**

- GitHub: [@jonathanmunamire](https://github.com/jonathanmunamire)
- Twitter: [@amanimunamire](https://twitter.com/amanimunamire)
- LinkedIn: [Jonathan Munamire](https://www.linkedin.com/in/jonathanmunamire/)

## 🔭 Future Features <a name="future-features"></a>

- implement some UX improvements: include transitions and/or animations, etc.
- A decent desktop design for the webapp.
- Implement the left side menu to improve the navigability of the app

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/jonathanmunamire/Budget-App/issues).

## ⭐️ Show your support <a name="support"></a>

If you like this project, kindly give it a star ⭐️

## 🙏 Acknowledgments <a name="acknowledgements"></a>

- [Microverse](https://www.microverse.org/) for providing the education that inspired this project.
- [RailsGuides](https://guides.rubyonrails.org/) for the excellent documentation on Ruby on Rails.
- [Gregoire Vella](https://www.behance.net/gallery/19759151/Snapscan-iOs-design-and-branding?tracking_source=) for the original design idea on Behance.

## 📝 License <a name="license"></a>

This project is licensed under the MIT License - see the [LICENSE](./LICENSE) file for details.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
