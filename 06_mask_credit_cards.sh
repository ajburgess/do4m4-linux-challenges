# Mask all instances of credit card numbers in input stream
# when write back out to the output stream
sed -E 's/[0-9]{4}-[0-9]{4}-[0-9]{4}-([0-9]{4})/XXXX-XXXX-XXXX-\1/g'

