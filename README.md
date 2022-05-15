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

The products are stored in the assets/products.json file and are decoded to display as needed.

The app follows a modular approach. Each feature has its own module and each module is separated into data sources, domain and presentation layers.

The app begins with the splash page.

### Splash
As there is no API calls needed to be made during splash screen, this feature only includes the presentation layer. It has bloc form navigation and a page containing splash animation. 

### Products List
This is the root page of the app. It shows a grid of products with a cart button and add to favourites button.

- #### Data Sources
    As the Backend data is mocked, there is only one data source with a single function that simply loads the products.json, decodes them and returns an array.







- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
