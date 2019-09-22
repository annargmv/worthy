# README

In order to run the app please use 

```http://localhost:3000/jewelry_pricing```

Assumptions:

1. We have only one item - Diamond
2. The categories of cut, color contain only a subset of the possibilities.
3. In order to create an amazing calculator i've read the following: 

    3.1 https://www.creditdonkey.com/diamond-prices.html in order to understand the pricing and parameters
    
    3.2 https://www.diamondcuts.com/ Diamond cuts
    
    3.3 https://www.bluenile.com/diamond-search?track=TabCtaHS Diamond evaluations
    
    
4. In order to see the similar items we need to wait for the total price value to be calculated.

    
What I used in this task:

1. Ruby on Rails
2. Bootstrap
4. Form that represents the calculator
3. Modal in order to create the popup
5. Working with ajax in order to render js response
6. Configuring AWS-S3 bucket in order to store the similar images.
7. Creating a databse.yml to define db
8. Relational DB
9, Evaluate button
10. Reset button - that clears everything but not the total price it the user still wants the value.


Reference: 
1. https://medium.com/alturasoluciones/setting-up-rails-5-active-storage-with-amazon-s3-3d158cf021ff

2. https://docs.aws.amazon.com/sdk-for-ruby/v3/developer-guide/hello.html

3. https://stackoverflow.com/questions/29093644/rails-download-images-from-s3-resize-and-upload-back-to-s3

4. https://stackoverflow.com/questions/2512254/iterate-through-every-file-in-one-directory