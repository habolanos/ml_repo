##Step1 Install Boto3

#To verify that Python installed correctly,
python3 --version

#Install pip for Python 3

#Download get-pip to current directory. It won't install anything, as of now
curl -O https://bootstrap.pypa.io/get-pip.py

#Use python3.6 to install pip
python3 get-pip.py
#this will install pip3 and pip3.6   

## Step 2 boto3, faker
pip install boto3
pip install faker
pip list

## Step 3 Crete the send_message program copy code from 03.send_message.py
nano send_message.py

## Step 4 Run the following command in your terminal to make the script executable
chmod +x send_message.py

## Step 5 Run
./send_message.py -q Messages -i 3
