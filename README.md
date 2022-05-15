# BakerSoft Demo

Demo Project for Bakersoft.

## Overview

This is a shopping/marketplace app with cart and favourite products.

It has the following mandatory features:
- View a list of products.
- View details of a product. 
- Add product to cart. 
- Remove product from cart. 
= View shopping cart.

It has following optional features:
- Mark a product as favourite. 
- Remove a product from favourites.
- View favourite products.

## App Features
The app follows a modular approach. Each feature has its own module and each module is separated into data sources, domain and presentation layers. The assets folder contains a single ***products.json*** file containing products.

The app begins with the splash page.

### Products.json
The products are stored in the assets/products.json file and are decoded to display as needed. They are classified against 3 page numbers for pagination. A single object has the following data:
- id
- name
- price
- imageUrl
- description
- nutritional value


### Common Entity 
The product model is the common entity throughout the app lifecycle. As the products list feature is the 
root of the app, the product model is located in the domain layer of the products list feature.

### Features Flow
Each feature has, with some variations, the following flow:
- UI in the **presentation** layer triggers an event in the relevant **bloc**.
- The **bloc** takes in instances of all relevant **use cases** from the **domain** layer. Each **use case** is triggered as needed based on the incoming event.
- The **use case** takes in the relevant **repository** instance and ***calls*** its functions, which calls the relevant function in the **repository**.
- **repository** executes its function and returns the optimal response to **use case**. If it needs access to a **data source** it takes in an instance. 
- **use case** returns the response to the **bloc**.
- **bloc** emits a relevant state to update the UI in the **presentation** layer. 

### Splash
As there is no API calls needed to be made during splash screen, this feature only includes the presentation layer. It has bloc form navigation and a page containing splash animation. 

### Products List
This is the root page of the app. It shows a grid of products with a cart button and add to favourites button.

- #### Data Sources
    Contains ***ProductsLocalDataSource*** to fetch products from **products.json**.
- #### Domain
    - ##### Models
        Contains the ***Product*** model which is used throughout the app. 
    - ##### Repositories
        ***ProductsRepository*** takes in an instance of ***ProductsLocalDataSource*** and runs ***getAllProducts***, which takes page number and returns ***List<Product>***. 
    - ##### Use Cases
        Contains ***GetAllProducts*** that takes an instance of ***ProductsRepository*** that ***calls*** with a page number to fetch ***List<Product>***.
- #### Presentation
    - ##### Bloc
