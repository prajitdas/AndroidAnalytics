'''
Created on April 27, 2016
@author: Prajit Kumar Das
'''
import base64
import json
import numpy as np
import sys
import logging
logging.basicConfig(filename='syscall.log',level=logging.DEBUG)

class NumpyEncoder(json.JSONEncoder):
	def default(self, obj):
		"""If input object is an ndarray it will be converted into a dict 
		holding dtype, shape and the data, base64 encoded.
		"""
		if isinstance(obj, np.ndarray):
			if obj.flags['C_CONTIGUOUS']:
				obj_data = obj.data
			else:
				cont_obj = np.ascontiguousarray(obj)
				assert(cont_obj.flags['C_CONTIGUOUS'])
				obj_data = cont_obj.data
			data_b64 = base64.b64encode(obj_data)
			return dict(__ndarray__=data_b64,
						dtype=str(obj.dtype),
						shape=obj.shape)
		# Let the base class default method raise the TypeError
		return json.JSONEncoder(self, obj)

def json_numpy_obj_hook(dct):
	"""
	Decodes a previously encoded numpy ndarray
	with proper shape and dtype
	:param dct: (dict) json encoded ndarray
	:return: (ndarray) if input was an encoded ndarray
	"""
	if isinstance(dct, dict) and '__ndarray__' in dct:
		data = base64.b64decode(dct['__ndarray__'])
		return np.frombuffer(data, dct['dtype']).reshape(dct['shape'])
	return dct

def encodeNDArray(inputArray):
	return json.dumps(inputArray, cls=NumpyEncoder)

def decodeNDArray(dumped):
	return json.loads(dumped, object_hook=json_numpy_obj_hook)

def main(argv):
	expected = np.arange(100, dtype=np.float)
	dumped = json.dumps(expected, cls=NumpyEncoder)
	result = json.loads(dumped, object_hook=json_numpy_obj_hook)

	# None of the following assertions will be broken.
	assert result.dtype == expected.dtype, "Wrong Type"
	assert result.shape == expected.shape, "Wrong Shape"
	assert np.allclose(expected, result), "Wrong Values"

if __name__ == "__main__":
	main(sys.argv)