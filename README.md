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
The app follows a modular approach. Each feature has its own module and each module is separated into data sources, domain and presentation layers. The assets folder contains a single [products.json] file containing products.

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

### Splash
As there is no API calls needed to be made during splash screen, this feature only includes the presentation layer. It has bloc form navigation and a page containing splash animation. 

### Products List
This is the root page of the app. It shows a grid of products with a cart button and add to favourites button.

- #### Data Sources
    As the Backend data is mocked, there is only one data source with a single function that simply loads the products.json, decodes them and returns an array.
- #### Domain
    - ##### Models
        It contains the [Product] model which is used throughout the app. 
    - ##### Repositories
        Here is the products repository that takes in an instance of [ProductsLocalDataSource] and has a single method to [getAllProducts]. For the sake of pagination, [getAllProducts] takes an integer parameter as page number. 







- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
