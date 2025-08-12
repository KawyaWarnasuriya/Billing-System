# 🛒 Cloud-Based Billing System

A dynamic and responsive **Cloud-Based Billing System** that allows users to manage stock, view items by category, and generate a bill with a checkout and receipt printing functionality.

## 📌 Features

- 🏷️ **Category-Based Filtering** – Fetches unique categories dynamically from the database.
- 🖼️ **Item Display with Images** – Shows all items as cards with images and prices.
- 🛍️ **Bill Section** – Adds selected items dynamically to the bill.
- 🧾 **Checkout & Receipt Printing** – Generates a receipt and triggers the print dialog upon checkout.
- ⚡ **AJAX-Powered Data Fetching** – Ensures a smooth user experience without page reloads.
  

## 🚀 Installation & Setup

1. Clone this repository:
   ```sh
   git clone https://github.com/yourusername/billing-system.git
   ```
2. Move into the project directory:
   ```sh
   cd billing-system
   ```
3. Set up your database:
   - Create a database named `POS`(you can add any database name).
   - Run the following SQL to create the `stock` table:
     ```sql
     CREATE TABLE stock (
         id INT AUTO_INCREMENT PRIMARY KEY,
         category VARCHAR(255) NOT NULL,
         name VARCHAR(255) NOT NULL,
         price DECIMAL(10,2) NOT NULL,
         image_path VARCHAR(255) NOT NULL
     );
     ```
4. Start your local server WAMP (XAMPP, or MAMP) and place the project in the `htdocs` folder.
5. Open `http://localhost/billing-system/index.html` in your browser to add Items.
6. Open `http://localhost/billing-system/billing.html` in your browser to Bill and Checkout.


## 🔧 Technologies Used

- **Frontend:** HTML, CSS, JavaScript, jQuery
- **Backend:** PHP, MySQL
- **Database:** MySQL
<p align="left">
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/html5/html5-original.svg" height="50" width="50" style="border-radius:10px; padding:5px; margin:5px; background:#f4f4f4"/>
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/css3/css3-original.svg" height="50" width="50" style="border-radius:10px; padding:5px; margin:5px; background:#f4f4f4"/>
  <img src="https://commons.wikimedia.org/wiki/Special:FilePath/Unofficial_JavaScript_logo_2.svg" height="50" width="50" style="border-radius:10px; padding:5px; margin:5px; background:#ffffff"/>
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/jquery/jquery-original.svg" height="50" width="50" style="border-radius:10px; padding:5px; margin:5px; background:#f4f4f4"/>
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/php/php-original.svg" height="50" width="50" style="border-radius:10px; padding:5px; margin:5px; background:#f4f4f4"/>
   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/mysql/mysql-original.svg" height="50" width="50" style="border-radius:10px; padding:5px; margin:5px; background:#f4f4f4"/>
</p>
  

## 📸 Screenshots
![7](https://github.com/user-attachments/assets/70124768-74bd-43b3-872b-fbf9a4fa6abe)

## 🌍 Demo
- 🔗 Live Demo: https://drive.google.com/file/d/1e818DB_FFLt04jvcra-EJIz99B-YFTrd/view?usp=sharing









