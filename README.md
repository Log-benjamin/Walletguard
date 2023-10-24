<a name="readme-top"></a>

<div align="center">

  <img src="app\assets\images\wallet-guard.png" alt="logo" width="160" height="auto" />
  <br/>
<h1>$ Walletguard $</h1>
</div>

<div align="center"><hr width="250px"/></div>

# 📗 Table of Contents

- [📖 About *Walletguard*](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
    - [🚀 Live Demo](#live-demo)
    - [🎥 Video Presentation](#video)
- [💻 Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Setup](#setup)
  - [Usage](#usage)
  - [Run](#run)
  - [Open](#open)
- [👥 Authors](#author)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [📝 License](#license)

<div align="center"><hr width="250px"/></div><br />

# 📖 **Walletguard** <a name="about-project"></a>

**Walletguard** is a mobile web application where you can manage your budget. Inside the app you have a list of transactions associated with a category, so that you can see how much money you spent and on what.
 
<p align="right">(<a href="#readme-top">back to top ☝️</a>)</p>
<div align="right"><hr width="250px"/></div>

## 🛠 Built With <a name="built-with"></a>
### Tech Stack <a name="tech-stack"></a>

<details>
<summary>Server</summary>
  <ul>
     <li>
      <a href="https://www.ruby-lang.org/en/">
      <img width="16px" height="auto" src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Ruby_logo.svg/198px-Ruby_logo.svg.png?20101129171534" alt="ruby logo" />
      Ruby
      </a>
    </li>
    <li>
      <a href="https://rubyonrails.org/">
      <img width="16px" height="auto" src="https://ik.imagekit.io/dqd3uh1at/rails-red-logo.svg?updatedAt=1697475084871" alt="ruby logo" />
      Rails
      </a>
    </li>
  </ul>
  </details>

<details>
<summary>Server</summary>
  <ul>
    <li>
      <a href="https://www.postgresql.org/">
      <img width="16px" height="auto" src="https://wiki.postgresql.org/images/3/30/PostgreSQL_logo.3colors.120x120.png" alt="postgreSQL logo" />
      PostgreSQL
      </a>
    </li>
  </ul>
  </details>

<div align="center"><hr width="250px"/></div><br />

### Key Features <a name="key-features"></a>
- **User authorization and authontication**
- **A Transaction List associated with a catagory**
- **User can see the total amount of money spent on each category**

<p align="right">(<a href="#readme-top">back to top ☝️</a>)</p>
<div align="right"><hr width="250px"/></div>

## 🚀  Live Demo <a href="#live-demo"></a>
- [Walletguard ](https://my-recipe-app-qigy.onrender.com/)

## 🎥 Video Presentation <a name="#video"></a>
- [Video Presentation link]()
<p align="right">(<a href="#readme-top">back to top ☝️</a>)</p>

## 💻 Getting Started <a name="getting-started"></a>
To get a local copy of this project up and running, follow these steps.

- ### Prerequisites
  - `git` installed. Please got to [Getting Started - Installing Git guide](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) and follow the steps described for your system to install `git`.
  - `Ruby` installed, you can go to the [Installing Ruby](https://www.ruby-lang.org/en/documentation/installation/) documentation and follow the steps for your computer OS.
  - `Rails` installed, you can follow the [GoRails Tutorial](https://gorails.com/setup/) and follow the steps for your computer OS.
  - `PostgreSQL` installed, you can follow the [PostgreSQL Tutorial](https://www.postgresqltutorial.com/) and follow the steps for your computer OS.

- ### Setup
  Clone this repository to your `local-folder`:
  ```sh
  cd local-folder
  git clone git@github.com:Log-benjamin/Walletguard.git
  ```

- ### Usage
  In the `local-folder` where you cloned the project, go into the project folder
  ```sh
  cd Walletguard
  ```

- ### Configure the database 
  ``` Make sure to modify the username and password in the `config/database.yml` to your local machine postgres setup ```
- ### Prepare
  In the `Walletguard` folder, use the following code to install the app dependencies
  ```rb
  bundle install
  ```

- ### Run
  In the `Walletguard` folder, use the following code to run the app
  ```rb
  rails s
  ```

- ### Open
  Open your favorite `browser` and type in the address bar
  ```sh
  http://localhost:3000
  ```

<p align="right">(<a href="#readme-top">back to top ☝️</a>)</p>
<div align="right"><hr width="250px"/></div>

## 👥 Authors <a name="author"></a>
- ### 👤 <b>Binyam Tegene</b>
  <ul>
    <li>
      <a href="https://github.com/Log-benjamin">
      <img width="16px" src="https://upload.wikimedia.org/wikipedia/commons/2/24/Github_logo_svg.svg" alt="github logo" />
      <b>@binyam tegene</b>
      </a>
    </li>
    <li>
      <a href="https://twitter.com/@binyam_tegene">
      <img width="16px" src="https://ik.imagekit.io/dqd3uh1at/x-new-logo.svg?updatedAt=1697475085598" alt="x logo" />
      <b>@binyam tegene</b>
      </a>
    </li>
    <li>
      <a href="https://www.linkedin.com/in/binyam-tegene-4b77ab265">
      <img width="16px" src="https://upload.wikimedia.org/wikipedia/commons/c/ca/LinkedIn_logo_initials.png" alt="linkedin logo" />
      <b>@binyam tegene</b>
      </a>
    </li>
  </ul>
<br />

<p align="right">(<a href="#readme-top">back to top ☝️</a>)</p>
<div align="right"><hr width="250px"/></div>

## 🔭 Future Features <a name="future-features"></a>
- **Optimize the performance of the app**
- **improve the layout using fornt end framework**.
- **use api to get finicial info and download local files**

<p align="right">(<a href="#readme-top">back to top ☝️</a>)</p>
<div align="right"><hr width="250px"/></div>

## 🤝 Contributing <a name="contributing"></a>
Contributions, issues, typos, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top ☝️</a>)</p>
<div align="right"><hr width="250px"/></div>

## ⭐️ Show your support <a name="support"></a>
If you like this project, your support giving a ⭐ will be highly appreciated.

<p align="right">(<a href="#readme-top">back to top ☝️</a>)</p>
<div align="right"><hr width="250px"/></div>

## 🙏 Acknowledgments <a name="acknowledgements"></a>
- Thanks to  [Gregoire Vella on Behance](https://www.behance.net/gregoirevella) for the origional design idea..
- Micorverse team and its community for their support and this amazing learning opportunity.
<p align="right">(<a href="#readme-top">back to top ☝️</a>)</p>
<div align="right"><hr width="250px"/></div>

## 📝 License <a name="license"></a>
This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top ☝️</a>)</p>
<div align="right"><hr width="250px"/></div>
