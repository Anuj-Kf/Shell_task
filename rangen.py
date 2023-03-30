import time
import logging
import random

#defining filename,logging format and filemode as append
logging.basicConfig(filename="python_output.log",
                    format='%(levelname)s : %(asctime)s %(message)s',
                    filemode='a')
#setting logging variable
logger = logging.getLogger()

#setting logging level
logger.setLevel(logging.DEBUG)

while True:
    start = time.time()

    while time.time()- start < 60:
	#iterating every minute

        random_number = random.randint(1,30)
    
    if random_number >= 1 and random_number <= 10:
    	#logging as error when random_number is between 1 to 10(both included)
        logger.error(": %d",random_number)
    else :
    	#logging as info for rest
        logger.info(": %d",random_number)
