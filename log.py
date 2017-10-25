class Log:

    def __init__(self):
        self.output = {}

    with open('log.json', 'w') as outfile:
        json.dump(str(output), outfile)
