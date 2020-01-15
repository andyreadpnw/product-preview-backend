require 'faker'
require 'securerandom'


    products = [
        ['Cold Steel', 11111111, 1, 1001, 100, "If this were a movie, these two would definitely be the villanous brother sister pair.", "https://bit.ly/35EGJd7", "Tight", "Wool", "Tall", 1],
        ['Le Tigre', 22222222, 1, 1002, 200, "This dog is hip", "https://bit.ly/301lZLL", "Tight", "Wool", "Tall", 1],
        ['Les Dangeroux', 33333333, 2, 1003, 300, "Winter ranger - battle tested, well built", "https://bit.ly/2FtFuDd", "Coat", "Cotton", "Regular", 1],
        ['The Snuggler', 44444444, 2, 1004, 400, "Forged at great expense, this tartan getup is exceptional", "https://bit.ly/301B282", "Coat", "Cotton", "Regular", 1],
        ['Le Capitan', 55555555, 3, 1005, 500, "Bit chilly? Not anymore. This SuggleWear features our new wool design", "https://bit.ly/2N9ZfDQ", "Loose", "Wool", "Regular", 1],
        ['The Silly Buddy', 66666666, 3, 1006, 600, "Perfect for small dogs. This SuggleWear features our new wool design", "https://bit.ly/301mjKt", "Loose", "Wool", "Regular", 1]
    ]


    ProductLoad.create(product_load_name: "January Load", product_load_date: "01/02/2003")


    products.each do |name, parent_id, department, style_id, color_id, product_copy, product_main_image, fit, fabrication, style_type, product_load_id|
        Product.create(name: name, parent_id: parent_id, department: department, style_id: style_id, color_id: color_id, product_copy: product_copy, product_main_image: product_main_image, fit: fit, fabrication: fabrication, style_type: style_type, product_load_id: product_load_id)
    end

    product_logs = [
        [11111111, 'Cold Steel', 1001, 1, 'Active', 'Urgent', 'Product Data', 'Suppression', 'US Site', 'Ecomm', 'Preview', 'This color is for our fall line, please suppress until 8/31', 'Andy Read', 'Aaron Rodgers', '01/12/2020', 1],
        [11111111, 'Cold Steel', 1001, 1, 'Active', 'High', 'Product Data', 'Data Correction', 'US Site', 'Ecomm', 'Preview', 'The alt images on this product are not correct at all. Please investigate', 'Andy Read', 'Aaron Rodgers', '01/13/2020', 1],
        [44444444, 'The Snuggler', 1004, 2, 'Completed', 'Urgent', 'Product Data', 'Data Correction', 'US Site', 'Ecomm', 'Preview', 'I dont think dogs are supposed to be this cute? Please look into!', 'Andy Read', 'Brett Favre', '01/14/2020', 4]
    ]

    product_logs.each do |parent_id, product_name, style_id, department, status, priority, issue_type, issue_class, site, division, environment, log_body, assigned, cc, date_due, product_id|
        ProductLog.create(parent_id: parent_id, product_name: product_name, style_id: style_id, department: department, status: status, priority: priority, issue_type: issue_type, issue_class: issue_class, site: site, division: division, environment: environment, log_body: log_body, assigned: assigned, cc: cc, date_due: date_due, product_id: product_id)
    end