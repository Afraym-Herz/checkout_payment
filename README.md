# checkout_payment


## Getting Started In Logic 

### First we set publish key in our project :

1 - set an object of publish key in main method before runApp() and get it a value of publish key
2 - Use your test mode keys while you test and develop, and your live mode keys when you publish your app.  

### Second Add an endpoint [Server Side] :

1 - This integration uses three Stripe API objects:

- A PaymentIntent. Stripe uses this to represent your intent to collect payment from a customer, tracking your charge attempts and payment state changes throughout the process.

- A Customer (optional). To set up a card for future payments, it must be attached to a Customer. Create a Customer object when your customer creates an account with your business. If your customer is making a payment as a guest, you can create a Customer object before payment and associate it with your own internal representation of the customer’s account later.

- A Customer Ephemeral Key (optional). Information on the Customer object is sensitive, and can’t be retrieved directly from an app. An Ephemeral Key grants the SDK temporary access to the Customer.

From documentation ↑↑

2 - 


### Third 3. Integrate the payment sheet [Client Side]

 BEFORE displaying the payment sheet, your checkout page should:

- Show the products being purchased and the total amount
- Collect any required shipping information
- Include a checkout button to present Stripe’s UI
- Next, integrate Stripe’s prebuilt payment UI into your app’s checkout.


