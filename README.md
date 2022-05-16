# BakerSoft Demo

Demo Project for Bakersoft.

## Overview

This is a shopping/marketplace app with cart and favourite products.

It has the following mandatory features:
- View a list of products.
- View details of a product. 
- Add product to cart. 
- Remove product from cart. 
- View shopping cart.

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
The ***Product*** model is the common entity throughout the app lifecycle. As the products list feature is the root of the app, the ***Product*** model is located in the domain layer of the products list feature.

### Features Workflow
Each feature has, with some variations, the following workflow:
- UI in the **presentation** layer triggers an event in the relevant **bloc**.
- The **bloc** takes in instances of all relevant **use cases** from the **domain** layer. Each **use case** is triggered as needed based on the incoming event.
- The **use case** takes in the relevant **repository** instance and ***calls*** its functions, which calls the relevant function in the **repository**.
- **repository** executes its function and returns the optimal response to **use case**. If it needs access to a **data source** it takes in an instance. 
- **use case** returns the response to the **bloc**.
- **bloc** emits a relevant state to update the UI in the **presentation** layer. 

### Splash
As there is no API calls needed to be made during splash screen, this feature only includes the presentation layer. It has bloc for navigation and a page containing splash animation. 

### Products List
This is the root page of the app. It shows a grid of products with a cart button and add to favourites button.
As this is the root page, the **WidgetsBindingObserver** is implemented to save the cart and favourite products to the local storage when the app goes into inactive state. 

- There is only a single ***ProductsLocalDataSource*** to fetch products.
- **Domain** layer contains the ***Product*** model used throughout the app.
- Only **use case** is ***Get All Products***. Pagination is implemented.
- Add to Favourites calls the ***FavouriteProductsBloc*** to add the product to favourites. 

### Show Product
Tapping any product in the **Products List** opens the product details page. You can change the quantity and add the product to cart. You can set the product as favourite. 
- Has no **data source**. 
- ***ProductsRepository*** is used to change quantity. 
- **Use Cases**: 
    - Increment Quantity
    - Decrement Quantity
    - Reset Quantity
- **Bloc** takes in events to change quantity and emits the new quantity value, which is shown in the UI.
- Add To Cart button calls the ***CartBloc*** in the Cart feature to add the product to cart. 
- Add to Favourites calls the ***FavouriteProductsBloc*** to add the product to favourites. 

### Cart
A product can be added to cart from multiple places. This feature handles all cart use cases.

- When the ***CartBloc*** is created, an event is triggered to load the saved cart from local storage. 
- ***CartLocalDataSource*** is used to save and load the cart from local storage.
- ***CartRepository*** has a map containing ***Product*** as key and its integer quantity as value. This repository is responsible for performing all cart functions. 
- **Cart Use Cases**:
    - Add To Cart
    - Remove from Cart
    - Clear Cart, to clear cart from carts page.
    - Get Cart Items Count, to show a bubble above cart icon. 
    - Get Cart Items, to show in carts page. 
    - Get Total Price, to show in carts page. 
    - Load Saved Cart, to fetch saved cart from local storage. 
    - Save Cart, to save cart to local storage. 
- ***CartBloc*** events are added in various places across the app.


### Favourite Products
Products can be added to favourites from multiple places. The workflow is similar to the cart workflow. This feature handles all use cases for favourite products.

- When the ***FavouriteProductsBloc*** is created, an event is triggered to load the saved favourite products from local storage.
- ***FavouriteProductsLocalDataSource*** is used to save and load the the favourite products from local storage.
- ***FavouriteProductsRepository*** has a List containing ***Product*** objects. This repository is responsible for performing all favourite product functions.
- **Favourite Product Use Cases**:
    - Add Product To Favourite
    - Remove From Favourite
    - Clear Favourite Products, to clear favourite products from favourite products page.
    - Get Favourite Products, to show in favourite products page. 
    - Load Save Favourite Products, to fetch save favourite products from local storage.
    - Save Favourite Products, to save to local storage. 
- ***FavouriteProductsBloc*** events are added in various places across the app.

## App Core
This folder contains some app configurations and items that are commonly used throught the app.

### Common Widgets
Contains common widgets reused in multiple places.

### Error
Contains a custom error response function that can be scaled to add all error cases and their appropriate responses

### Utilities

- ***AppConfig*** has static attributes that mut be initialized in the root page of the application. It contains following data for multiple app functions and configurations:
    - Media query data
    - Text sizes based on screen size
    - Get Text Style function to standardize text style
    - Confirmation Dialog function to be used anywhere
    - Success, Warning and Failure snackbars to be used anywhere.
- ***AppRouter*** defines an initial route and an onGenerateRoute functions with route strings. All attributes are static for static access. 
- ***Constants.dart*** contains all constants and enums used with the app.
- ***Helpers.dart*** contains helper functions.

## Root
This directory contains ***main.dart*** and ***multi_provider_widget.dart***. To reduce clutter in ***main.dart*** file, the ***multi_provider_widget.dart*** is used for ***MultiRepositoryProvider*** and ***MultiBlocProvider***.


