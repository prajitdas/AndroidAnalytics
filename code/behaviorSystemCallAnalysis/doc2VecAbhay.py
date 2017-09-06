import os
from gensim.models.doc2vec import TaggedDocument
from gensim.models import Doc2Vec
import logging
logging.basicConfig(format='%(asctime)s : %(levelname)s : %(message)s', level=logging.INFO)
def prepare_data():
	labels = os.listdir('out')
	cleanout = open('cleanout','w')
	for label in labels:
		fpath = os.path.join(os.getcwd(),'out', label, label + '.out')
		if os.path.exists(fpath):
			syscalls_raw = open(fpath).readlines()
			syscalls_proc = []
			if syscalls_raw:
				for syscall in syscalls_raw:
					cleantoken = syscall.split('(')
					if len(cleantoken) > 1:
						syscalls_proc.append(cleantoken[0])
				cleanout.write(label+'\t'+' '.join(syscalls_proc)+'\n')


class LabeledLineSentence(object):
	def __iter__(self):
		app_lines = open('cleanout').readlines()
		for app_line in app_lines:
			app_calls = app_line.strip().split('\t')
			yield TaggedDocument(words=app_calls[1].split(), tags=[app_calls[0]])

# sentences = LabeledLineSentence()
# model = Doc2Vec(window=3, min_count=5, workers=4, size=100)
# model.build_vocab(sentences)
# for epoch in range(10):
# 	model.train(sentences)
# 	model.alpha -= 0.002  # decrease the learning rate
# 	model.min_alpha = model.alpha  # fix the learning rate, no decay

# model.save('model_1')

model = Doc2Vec.load('model_1')
anchor = 'ch.bitspin.timely'
recos = model.docvecs.most_similar(anchor)

print model.docvecs[anchor]

for reco in recos:
	print reco