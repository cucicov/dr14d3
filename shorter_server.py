from pythonosc import udp_client
import time
import random

# Define the IP address and port
# Create an OSC client
client1 = udp_client.SimpleUDPClient("192.168.1.101", 7110)
client2 = udp_client.SimpleUDPClient("192.168.1.102", 7110)
client3 = udp_client.SimpleUDPClient("192.168.1.103", 7110)
client4 = udp_client.SimpleUDPClient("192.168.1.104", 7110)
client5 = udp_client.SimpleUDPClient("192.168.1.105", 7110)
client6 = udp_client.SimpleUDPClient("192.168.1.106", 7110)
client7 = udp_client.SimpleUDPClient("192.168.1.107", 7110)

real_pi_ids = {
    1: ["/pi1/band", client1],
    2: ["/pi2/band", client2],
    3: ["/pi3/band", client3],
    4: ["/pi4/band", client4],
    5: ["/pi5/band", client5],
    6: ["/pi6/band", client6],
    7: ["/pi7/band", client7],
}


def get_real_pi_id(id):
    return real_pi_ids[id][0]

def get_real_pi_ip(id):
    return real_pi_ids[id][1]

def reset(pi_id):
    # reset previous letter
    client_osc = get_real_pi_ip(pi_id)
    client_osc.send_message(get_real_pi_id(pi_id), 0)

def reset_all():
    reset(1)
    reset(2)
    reset(3)
    reset(4)
    reset(5)
    reset(6)
    reset(7)

def send_a(pi_id):
    # reset previous letter
    client_osc = get_real_pi_ip(pi_id)
    client_osc.send_message(get_real_pi_id(pi_id), 0)
    bands = [11, 21, 31, 51, 61, 81]
    for band in bands:
        client_osc.send_message(get_real_pi_id(pi_id), band)

def send_b(pi_id):
    # reset previous letter
    client_osc = get_real_pi_ip(pi_id)
    client_osc.send_message(get_real_pi_id(pi_id), 0)
    bands = [31, 41, 51, 61, 81]
    for band in bands:
        client_osc.send_message(get_real_pi_id(pi_id), band)

def send_c(pi_id):
    # reset previous letter
    client_osc = get_real_pi_ip(pi_id)
    client_osc.send_message(get_real_pi_id(pi_id), 0)
    bands = [11, 41, 51, 61]
    for band in bands:
        client_osc.send_message(get_real_pi_id(pi_id), band)

def send_d(pi_id):
    # reset previous letter
    client_osc = get_real_pi_ip(pi_id)
    client_osc.send_message(get_real_pi_id(pi_id), 0)
    bands = [21, 31, 41, 51, 81]
    for band in bands:
        client_osc.send_message(get_real_pi_id(pi_id), band)

def send_e(pi_id):
    # reset previous letter
    client_osc = get_real_pi_ip(pi_id)
    client_osc.send_message(get_real_pi_id(pi_id), 0)
    bands = [11, 41, 51, 61, 81]
    for band in bands:
        client_osc.send_message(get_real_pi_id(pi_id), band)

def send_f(pi_id):
    # reset previous letter
    client_osc = get_real_pi_ip(pi_id)
    client_osc.send_message(get_real_pi_id(pi_id), 0)
    bands = [11, 51, 61, 81]
    for band in bands:
        client_osc.send_message(get_real_pi_id(pi_id), band)

def send_g(pi_id):
    # reset previous letter
    client_osc = get_real_pi_ip(pi_id)
    client_osc.send_message(get_real_pi_id(pi_id), 0)
    bands = [11, 31, 41, 51, 61]
    for band in bands:
        client_osc.send_message(get_real_pi_id(pi_id), band)

def send_h(pi_id):
    # reset previous letter
    client_osc = get_real_pi_ip(pi_id)
    client_osc.send_message(get_real_pi_id(pi_id), 0)
    bands = [21, 31, 51, 61, 81]
    for band in bands:
        client_osc.send_message(get_real_pi_id(pi_id), band)

def send_i(pi_id):
    # reset previous letter
    client_osc = get_real_pi_ip(pi_id)
    client_osc.send_message(get_real_pi_id(pi_id), 0)
    bands = [71, 91]
    for band in bands:
        client_osc.send_message(get_real_pi_id(pi_id), band)

def send_j(pi_id):
    # reset previous letter
    client_osc = get_real_pi_ip(pi_id)
    client_osc.send_message(get_real_pi_id(pi_id), 0)
    bands = [21, 31, 41, 51]
    for band in bands:
        client_osc.send_message(get_real_pi_id(pi_id), band)

def send_k(pi_id):
    # reset previous letter
    client_osc = get_real_pi_ip(pi_id)
    client_osc.send_message(get_real_pi_id(pi_id), 0)
    bands = [31, 51, 61, 81, 111]
    for band in bands:
        client_osc.send_message(get_real_pi_id(pi_id), band)

def send_l(pi_id):
    # reset previous letter
    client_osc = get_real_pi_ip(pi_id)
    client_osc.send_message(get_real_pi_id(pi_id), 0)
    bands = [41, 51, 61]
    for band in bands:
        client_osc.send_message(get_real_pi_id(pi_id), band)

def send_m(pi_id):
    # reset previous letter
    client_osc = get_real_pi_ip(pi_id)
    client_osc.send_message(get_real_pi_id(pi_id), 0)
    bands = [21, 31, 51, 61, 101, 111]
    for band in bands:
        client_osc.send_message(get_real_pi_id(pi_id), band)

def send_n(pi_id):
    # reset previous letter
    client_osc = get_real_pi_ip(pi_id)
    client_osc.send_message(get_real_pi_id(pi_id), 0)
    bands = [21, 31, 51, 61, 101, 121]
    for band in bands:
        client_osc.send_message(get_real_pi_id(pi_id), band)

def send_o(pi_id):
    # reset previous letter
    client_osc = get_real_pi_ip(pi_id)
    client_osc.send_message(get_real_pi_id(pi_id), 0)
    bands = [11, 21, 31, 41, 51, 61]
    for band in bands:
        client_osc.send_message(get_real_pi_id(pi_id), band)

def send_p(pi_id):
    # reset previous letter
    client_osc = get_real_pi_ip(pi_id)
    client_osc.send_message(get_real_pi_id(pi_id), 0)
    bands = [11, 21, 51, 61, 81]
    for band in bands:
        client_osc.send_message(get_real_pi_id(pi_id), band)

def send_q(pi_id):
    # reset previous letter
    client_osc = get_real_pi_ip(pi_id)
    client_osc.send_message(get_real_pi_id(pi_id), 0)
    bands = [11, 21, 31, 41, 51, 61, 121]
    for band in bands:
        client_osc.send_message(get_real_pi_id(pi_id), band)

def send_r(pi_id):
    # reset previous letter
    client_osc = get_real_pi_ip(pi_id)
    client_osc.send_message(get_real_pi_id(pi_id), 0)
    bands = [11, 21, 51, 61, 81, 121]
    for band in bands:
        client_osc.send_message(get_real_pi_id(pi_id), band)

def send_s(pi_id):
    # reset previous letter
    client_osc = get_real_pi_ip(pi_id)
    client_osc.send_message(get_real_pi_id(pi_id), 0)
    bands = [11, 31, 41, 61, 81]
    for band in bands:
        client_osc.send_message(get_real_pi_id(pi_id), band)

def send_t(pi_id):
    # reset previous letter
    client_osc = get_real_pi_ip(pi_id)
    client_osc.send_message(get_real_pi_id(pi_id), 0)
    bands = [11, 71, 91]
    for band in bands:
        client_osc.send_message(get_real_pi_id(pi_id), band)

def send_u(pi_id):
    # reset previous letter
    client_osc = get_real_pi_ip(pi_id)
    client_osc.send_message(get_real_pi_id(pi_id), 0)
    bands = [21, 31, 41, 51, 61]
    for band in bands:
        client_osc.send_message(get_real_pi_id(pi_id), band)

def send_v(pi_id):
    # reset previous letter
    client_osc = get_real_pi_ip(pi_id)
    client_osc.send_message(get_real_pi_id(pi_id), 0)
    bands = [21, 31, 101, 121]
    for band in bands:
        client_osc.send_message(get_real_pi_id(pi_id), band)

def send_w(pi_id):
    # reset previous letter
    client_osc = get_real_pi_ip(pi_id)
    client_osc.send_message(get_real_pi_id(pi_id), 0)
    bands = [21, 31, 51, 61, 121, 131]
    for band in bands:
        client_osc.send_message(get_real_pi_id(pi_id), band)

def send_x(pi_id):
    # reset previous letter
    client_osc = get_real_pi_ip(pi_id)
    client_osc.send_message(get_real_pi_id(pi_id), 0)
    bands = [101, 111, 121, 131]
    for band in bands:
        client_osc.send_message(get_real_pi_id(pi_id), band)

def send_y(pi_id):
    # reset previous letter
    client_osc = get_real_pi_ip(pi_id)
    client_osc.send_message(get_real_pi_id(pi_id), 0)
    bands = [21, 31, 41, 61, 81]
    for band in bands:
        client_osc.send_message(get_real_pi_id(pi_id), band)

def send_z(pi_id):
    # reset previous letter
    client_osc = get_real_pi_ip(pi_id)
    client_osc.send_message(get_real_pi_id(pi_id), 0)
    bands = [11, 41, 111, 131]
    for band in bands:
        client_osc.send_message(get_real_pi_id(pi_id), band)

def send_1(pi_id):
    # reset previous letter
    client_osc = get_real_pi_ip(pi_id)
    client_osc.send_message(get_real_pi_id(pi_id), 0)
    bands = [71, 91]
    for band in bands:
        client_osc.send_message(get_real_pi_id(pi_id), band)

def send_2(pi_id):
    # reset previous letter
    client_osc = get_real_pi_ip(pi_id)
    client_osc.send_message(get_real_pi_id(pi_id), 0)
    bands = [11, 21, 41, 51, 81]
    for band in bands:
        client_osc.send_message(get_real_pi_id(pi_id), band)

def send_3(pi_id):
    # reset previous letter
    client_osc = get_real_pi_ip(pi_id)
    client_osc.send_message(get_real_pi_id(pi_id), 0)
    bands = [11, 21, 31, 41, 81]
    for band in bands:
        client_osc.send_message(get_real_pi_id(pi_id), band)

def send_4(pi_id):
    # reset previous letter
    client_osc = get_real_pi_ip(pi_id)
    client_osc.send_message(get_real_pi_id(pi_id), 0)
    bands = [21, 31, 61, 81]
    for band in bands:
        client_osc.send_message(get_real_pi_id(pi_id), band)

def send_5(pi_id):
    # reset previous letter
    client_osc = get_real_pi_ip(pi_id)
    client_osc.send_message(get_real_pi_id(pi_id), 0)
    bands = [11, 31, 41, 61, 81]
    for band in bands:
        client_osc.send_message(get_real_pi_id(pi_id), band)

def send_6(pi_id):
    # reset previous letter
    client_osc = get_real_pi_ip(pi_id)
    client_osc.send_message(get_real_pi_id(pi_id), 0)
    bands = [11, 31, 41, 51, 61, 81]
    for band in bands:
        client_osc.send_message(get_real_pi_id(pi_id), band)

def send_7(pi_id):
    # reset previous letter
    client_osc = get_real_pi_ip(pi_id)
    client_osc.send_message(get_real_pi_id(pi_id), 0)
    bands = [11, 21, 31]
    for band in bands:
        client_osc.send_message(get_real_pi_id(pi_id), band)

def send_8(pi_id):
    # reset previous letter
    client_osc = get_real_pi_ip(pi_id)
    client_osc.send_message(get_real_pi_id(pi_id), 0)
    bands = [11, 21, 31, 41, 51, 61, 81]
    for band in bands:
        client_osc.send_message(get_real_pi_id(pi_id), band)

def send_9(pi_id):
    # reset previous letter
    client_osc = get_real_pi_ip(pi_id)
    client_osc.send_message(get_real_pi_id(pi_id), 0)
    bands = [11, 21, 31, 41, 61, 81]
    for band in bands:
        client_osc.send_message(get_real_pi_id(pi_id), band)

def send_0(pi_id):
    # reset previous letter
    client_osc = get_real_pi_ip(pi_id)
    client_osc.send_message(get_real_pi_id(pi_id), 0)
    bands = [11, 21, 31, 41, 51, 61]
    for band in bands:
        client_osc.send_message(get_real_pi_id(pi_id), band)

def send_animation_1():
    # reset previous letter

    reset_all()
    time.sleep(0.1)
    pi_id = 1
    client_osc = get_real_pi_ip(pi_id)
    client_osc.send_message(get_real_pi_id(pi_id), 101)
    client_osc.send_message(get_real_pi_id(pi_id), 121)
    time.sleep(0.1)
    reset_all()

    pi_id = 1
    client_osc = get_real_pi_ip(pi_id)
    client_osc.send_message(get_real_pi_id(pi_id), 101)
    client_osc.send_message(get_real_pi_id(pi_id), 121)
    pi_id = 2
    client_osc = get_real_pi_ip(pi_id)
    client_osc.send_message(get_real_pi_id(pi_id), 101)
    client_osc.send_message(get_real_pi_id(pi_id), 121)
    time.sleep(0.1)
    reset_all()

    pi_id = 1
    client_osc = get_real_pi_ip(pi_id)
    client_osc.send_message(get_real_pi_id(pi_id), 101)
    client_osc.send_message(get_real_pi_id(pi_id), 121)
    pi_id = 2
    client_osc = get_real_pi_ip(pi_id)
    client_osc.send_message(get_real_pi_id(pi_id), 101)
    client_osc.send_message(get_real_pi_id(pi_id), 121)
    pi_id = 3
    client_osc = get_real_pi_ip(pi_id)
    client_osc.send_message(get_real_pi_id(pi_id), 101)
    client_osc.send_message(get_real_pi_id(pi_id), 121)
    time.sleep(0.1)
    reset_all()

    pi_id = 2
    client_osc = get_real_pi_ip(pi_id)
    client_osc.send_message(get_real_pi_id(pi_id), 101)
    client_osc.send_message(get_real_pi_id(pi_id), 121)
    pi_id = 3
    client_osc = get_real_pi_ip(pi_id)
    client_osc.send_message(get_real_pi_id(pi_id), 101)
    client_osc.send_message(get_real_pi_id(pi_id), 121)
    pi_id = 4
    client_osc = get_real_pi_ip(pi_id)
    client_osc.send_message(get_real_pi_id(pi_id), 101)
    client_osc.send_message(get_real_pi_id(pi_id), 121)
    time.sleep(0.1)
    reset_all()

    pi_id = 3
    client_osc = get_real_pi_ip(pi_id)
    client_osc.send_message(get_real_pi_id(pi_id), 101)
    client_osc.send_message(get_real_pi_id(pi_id), 121)
    pi_id = 4
    client_osc = get_real_pi_ip(pi_id)
    client_osc.send_message(get_real_pi_id(pi_id), 101)
    client_osc.send_message(get_real_pi_id(pi_id), 121)
    pi_id = 5
    client_osc = get_real_pi_ip(pi_id)
    client_osc.send_message(get_real_pi_id(pi_id), 101)
    client_osc.send_message(get_real_pi_id(pi_id), 121)
    time.sleep(0.1)
    reset_all()

    pi_id = 4
    client_osc = get_real_pi_ip(pi_id)
    client_osc.send_message(get_real_pi_id(pi_id), 101)
    client_osc.send_message(get_real_pi_id(pi_id), 121)
    pi_id = 5
    client_osc = get_real_pi_ip(pi_id)
    client_osc.send_message(get_real_pi_id(pi_id), 101)
    client_osc.send_message(get_real_pi_id(pi_id), 121)
    pi_id = 6
    client_osc = get_real_pi_ip(pi_id)
    client_osc.send_message(get_real_pi_id(pi_id), 101)
    client_osc.send_message(get_real_pi_id(pi_id), 121)
    time.sleep(0.1)
    reset_all()

    pi_id = 5
    client_osc = get_real_pi_ip(pi_id)
    client_osc.send_message(get_real_pi_id(pi_id), 101)
    client_osc.send_message(get_real_pi_id(pi_id), 121)
    pi_id = 6
    client_osc = get_real_pi_ip(pi_id)
    client_osc.send_message(get_real_pi_id(pi_id), 101)
    client_osc.send_message(get_real_pi_id(pi_id), 121)
    pi_id = 7
    client_osc = get_real_pi_ip(pi_id)
    client_osc.send_message(get_real_pi_id(pi_id), 101)
    client_osc.send_message(get_real_pi_id(pi_id), 121)
    time.sleep(0.1)
    reset_all()

    pi_id = 6
    client_osc = get_real_pi_ip(pi_id)
    client_osc.send_message(get_real_pi_id(pi_id), 101)
    client_osc.send_message(get_real_pi_id(pi_id), 121)
    pi_id = 7
    client_osc = get_real_pi_ip(pi_id)
    client_osc.send_message(get_real_pi_id(pi_id), 101)
    client_osc.send_message(get_real_pi_id(pi_id), 121)
    time.sleep(0.1)
    reset_all()

    pi_id = 7
    client_osc = get_real_pi_ip(pi_id)
    client_osc.send_message(get_real_pi_id(pi_id), 101)
    client_osc.send_message(get_real_pi_id(pi_id), 121)
    time.sleep(0.1)
    reset_all()

def run_display_message(words):
    for word in words:
        # keep track of each letter index and send to appropriate module.
        letter_idx = 0
        for letter in word:
            letter_idx += 1
            if letter == "a":
                send_a(letter_idx)
            elif letter == "b":
                send_b(letter_idx)
            elif letter == "c":
                send_c(letter_idx)
            elif letter == "d":
                send_d(letter_idx)
            elif letter == "e":
                send_e(letter_idx)
            elif letter == "f":
                send_f(letter_idx)
            elif letter == "g":
                send_g(letter_idx)
            elif letter == "h":
                send_h(letter_idx)
            elif letter == "i":
                send_i(letter_idx)
            elif letter == "j":
                send_j(letter_idx)
            elif letter == "k":
                send_k(letter_idx)
            elif letter == "l":
                send_l(letter_idx)
            elif letter == "m":
                send_m(letter_idx)
            elif letter == "n":
                send_n(letter_idx)
            elif letter == "o":
                send_o(letter_idx)
            elif letter == "p":
                send_p(letter_idx)
            elif letter == "q":
                send_q(letter_idx)
            elif letter == "r":
                send_r(letter_idx)
            elif letter == "s":
                send_s(letter_idx)
            elif letter == "t":
                send_t(letter_idx)
            elif letter == "u":
                send_u(letter_idx)
            elif letter == "v":
                send_v(letter_idx)
            elif letter == "w":
                send_w(letter_idx)
            elif letter == "x":
                send_x(letter_idx)
            elif letter == "y":
                send_y(letter_idx)
            elif letter == "z":
                send_z(letter_idx)
            elif letter == "1":
                send_1(letter_idx)
            elif letter == "2":
                send_2(letter_idx)
            elif letter == "3":
                send_3(letter_idx)
            elif letter == "4":
                send_4(letter_idx)
            elif letter == "5":
                send_5(letter_idx)
            elif letter == "6":
                send_6(letter_idx)
            elif letter == "7":
                send_7(letter_idx)
            elif letter == "8":
                send_8(letter_idx)
            elif letter == "9":
                send_9(letter_idx)
            elif letter == "0":
                send_0(letter_idx)
            time.sleep(0.03)
        time.sleep(1)
        reset_all()



# Define the file path
file_path = "texts.txt"  # Replace with your file path
target_min1 = 9
target_min2 = 15
target_min3 = 20
target_min4 = 45

# Open the file in read mode
while True:
    current_min = time.localtime().tm_min
    if current_min == target_min1 or current_min == target_min2 or current_min == target_min3 or current_min == target_min4:
        with open(file_path, 'r') as file:
            # Read each line (sentence) in the file
            for line in file:
                # Split the line into individual words
                words = line.split()

                random_number = random.randint(1, 10)
                # print every 10th line randomly
                if random_number == 1:
                    print(f"printing: {line}")
                    # Print each word to the console
                    run_display_message(words)
                    send_animation_1()
                    time.sleep(1)

    else:
        print(f"Waiting for minute {target_min1}/{target_min2}/{target_min3}/{target_min4}...")
        time.sleep(50)  # Wait for a minute and check again