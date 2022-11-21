# Subscribe-Take-Home-Project

Good afternoon, I am Erik Stoupignan Sánchez Beltrán. I thank you very much for the opportunity to apply to your test and although my solution was not 100% functional in the 4 hours that the test indicates, I am satisfied with my result and I hope you like the way I handle the situation.

Any questions or comments, I remain at your service. Have a great day.

## Instructions to use my code on your local computer 

- You need to have Ruby installed on your local machine

### To set up 

- Git clone https://github.com/ErikStoupignan/Subscribe-Take-Home-Project.git
- cd .\Subscribe-Take-Home-Project\

### To Run the code 

- Use: **ruby main.rb** on the terminal to display this menu: 

![image](https://user-images.githubusercontent.com/106561762/202967722-228ab13d-e162-40e3-9c32-b12be8319ede.png)

I have pasted the documentation that included the challenge in case you want to try the examples.

**Input 1:**
- 2 book at 12.49
- 1 music CD at 14.99
- 1 chocolate bar at 0.85

**Input 2:**
- 1 imported box of chocolates at 10.00
- 1 imported bottle of perfume at 47.50

**Input 3:**
- 1 imported bottle of perfume at 27.99
- 1 bottle of perfume at 18.99
- 1 packet of headache pills at 9.75
- 3 imported boxes of chocolates at 11.25

**I have also added comments to all my classes and functions to make it easier to understand the development of my application.**

![image](https://user-images.githubusercontent.com/106561762/202968137-bd0fce7c-9e2b-4ed5-94c8-cf0426f459a3.png)


## Screenshots of my code working in the console after 4 hours.
![image](https://user-images.githubusercontent.com/106561762/202965930-12744a7c-9928-4a63-9104-994b027a16f2.png)

Unfortunately, I was unable to implement the tax feature in my solution before the 4 hours were up, however I am sharing a screenshot of my code currently working.

It allows the entry of data in the format indicated in the challenge, dividing the information into 3 essential parts:

1.- Number of elements.

2.- Description of the elements.

3.- Value of the elements.

3.- Total sum of the value of the elements (without considering taxes).


As soon as the information is divided, filter the description of the article to categorize it into:

  1.- Books

  2.- Food

  3.- Medical Products

  4.- Imported

  5.- Others


With the information divided and organized, I was able to print the lists with the totals of each item in the final list showing the total.



## Subscribe-Take-Home-Project

General Requirements

Use either Ruby or Javascript. If you feel more comfortable with another language, please let us know and we can discuss.

Do not use any external libraries to solve this problem. You may only use external libraries or tools for building or testing purposes (e.g., Rspec, Jest, Mocha, etc.).  Please submit your solution either as a public repository (GitHub, Bitbucket, etc.) and share the URL with us below or you can upload your code. Include detailed instructions on how to run the application and an explanation of assumptions you make (if any)


IMPORTANT:

Please limit the amount of time you spend on the problem to 4 hours. If you haven't completed the challenge within the allotted time, please submit the work you have completed. Focus on implementing the requirements with the best code you can produce within the given timeframe.


Problem Statement

This problem requires some kind of input. You are free to implement any mechanism for feeding the input into your solution. You should provide sufficient evidence that your solution is complete by, as a minimum, indicating that it works correctly against the supplied test data.

Basic sales tax is applicable at a rate of 10% on all goods, except books, food, and medical products that are exempt. Import duty is an additional sales tax applicable on all imported goods at a rate of 5%, with no exemptions.



When I purchase items I receive a receipt which lists the name of all the items and their price (including tax), finishing with the total cost of the items, and the total amounts of sales taxes paid. The rounding rules for sales tax are that for a tax rate of n%, a shelf price of p contains (np/100 rounded up to the nearest 0.05) amount of sales tax.



Write an application that prints out the receipt details for these shopping baskets:

![image](https://user-images.githubusercontent.com/106561762/202965581-fd08e460-98c3-4e7d-838c-e1cef862cc73.png)

![image](https://user-images.githubusercontent.com/106561762/202965607-1b188f84-a669-4f16-b2d4-a57fd84dab66.png)


