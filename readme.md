1. In main.tf

    Change to your AMI (Not Necessary)
    Change to the instance size you need (Not Necessary)
    Change to your own key name (Necessary)
    Change to your Subnet (Necessary)
    Change to your Security group (Necessary)

2. In backend.tf

    Your S3 bucket name, put the name of your S3 (Create it manually by aws UI)
    Region (Make sure you have put the correct region where you S3 is)

3. In hosts.ini

    In line 3 -> Pathnex-ec2-key.pem (Change with your Key name & location)
    In line 7 -> Change with your EC2's PUBLIC IP

4. Run 

    ansible-playbook -i hosts.ini nginx_ssl.yml