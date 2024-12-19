<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Management System</title>
    <link rel="stylesheet" href="css/order.css">
</head>
<body>
    <!-- Navigation Bar -->
    <nav class="navbar">
        <div class="container">
            <a class="navbar-brand" href="#"><span class="highlight">Stock_</span><span>Master</span></a>
            <div class="navbar-menu">
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Create Order</a></li>
                    <li><a href="#">View Orders</a></li>
                    <li><a href="#">Update Order</a></li>
                    <li><a href="#">Delete Order</a></li>
                </ul>
                <a href="#" class="btn btn-custom">Get Started</a>
            </div>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="container">
        <!-- Create Order Form (Top of the page) -->
        <section id="create-order" class="order-form-section">
            <form class="order-form" method="post" action="insert">
                <h2>Create Order</h2>
                
                <div class="form-group">
                    <label for="order-id">Order ID:</label>
                    <input type="text" id="order-id" required class="form-control" name="Uid" >
                </div>
                
                
                <div class="form-group">
                    <label for="customer-name">Customer Name:</label>
                    <input type="text" id="customer-name" required class="form-control" name="Uname">
                </div>

                <div class="form-group">
                    <label for="company-name">Company Name:</label>
                    <input type="text" id="company-name" class="form-control" name="Cname">
                </div>

                <div class="form-group">
                    <label for="country">Country:</label>
                    <input type="text" id="country" class="form-control" name="Country">
                </div>

                <div class="form-group">
                    <label for="address">Address:</label>
                    <input type="text" id="address" class="form-control" name="address">
                </div>

                <div class="form-group">
                    <label for="zip-code">Zip Code:</label>
                    <input type="text" id="zip-code" class="form-control" name="Zip">
                </div>

                <div class="form-group">
                    <label for="product-details">Product Details:</label>
                    <input type="text" id="product-details" required class="form-control" name="ProductDetails">
                </div>

                <div class="form-group">
                    <label for="qty">Quantity:</label>
                    <input type="number" id="qty" required class="form-control" name="Quantity">
                </div>

                

                <button type="submit" class="btn btn-custom">Create Order</button>
            </form>
        </section>

        <!-- Other Forms (Below the Create Order form) -->
        <section id="other-forms" class="forms-container" >
            <!-- Read Order Form -->
            <form class="order-form" action="read" method="post">
                <h2>Read Order</h2>
                <div class="form-group">
                    <label for="order-id-read">Order ID:</label>
                    <input type="text" id="order-id-read" required class="form-control" name ="Oid">
                </div>
                <button type="submit" class="btn btn-custom">Display Order</button>
            </form>

           
            <!-- Delete Order Form -->
            <form class="order-form" >
                <h2>Delete Order</h2>
                <div class="form-group">
                    <label for="order-id-delete">Order ID:</label>
                    <input type="text" id="order-id-delete" required class="form-control">
                </div>

                <div class="form-group">
                    <label for="customer-name-delete">Customer Name:</label>
                    <input type="text" id="customer-name-delete" required class="form-control">
                </div>

                <button type="submit" class="btn btn-custom">Delete Order</button>
            </form>
        </section>
    </div>

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="footer-content">
                <h5>About Us</h5>
                <p>StockMaster is your reliable partner in managing inventory efficiently and effectively. Our online stock management system offers real-time tracking and smart reporting to streamline your business operations.</p>
                <p>&copy; 2024 StockMaster. All Rights Reserved.</p>
                <p>OOP_Assignment / Online_Stock_Management_System<br> OOP/2024/S2/MLB/WD/G158</p>
            </div>
        </div>
    </footer>
</body>
</html>