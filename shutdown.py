import paramiko
import time

def wait_for_hour(target_hour):
    while True:
        current_hour = time.localtime().tm_hour
        if current_hour == target_hour:
            break
        else:
            print(f"Waiting for {target_hour}:00...")
            time.sleep(60)  # Wait for a minute and check again

def ssh_shutdown(ip, username, password):
    ssh = paramiko.SSHClient()
    ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
    ssh.connect(ip, username=username, password=password)
    
    # Send the shutdown command (specific to your remote system)
    stdin, stdout, stderr = ssh.exec_command("sudo shutdown -h now")

    # Close the SSH connection
    ssh.close()

# Define your target hour (24-hour format)
target_hour = 19  # For example, 19 represents 7 PM

# Wait for the target hour
wait_for_hour(target_hour)

# Connect via SSH and shut down the remote computer
ssh_shutdown("192.168.1.101", "pi", "raspberry")
ssh_shutdown("192.168.1.102", "pi", "raspberry")
ssh_shutdown("192.168.1.103", "pi", "raspberry")
ssh_shutdown("192.168.1.104", "pi", "raspberry")
ssh_shutdown("192.168.1.105", "pi", "raspberry")
ssh_shutdown("192.168.1.106", "pi", "raspberry")
ssh_shutdown("192.168.1.107", "pi", "raspberry")

os.system("sudo shutdown now")