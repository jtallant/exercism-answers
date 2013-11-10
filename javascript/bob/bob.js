var Bob = function() {};
module.exports = Bob;

String.prototype.isEmpty = function() {
	return this.trim() === '';
}

String.prototype.isAllCaps = function() {
	return this.toUpperCase() == this;
}

String.prototype.endsWith = function(target) {
	return this.slice(-1) === target;
}

Bob.prototype.hey = function(message) {

	if (message.isEmpty()) {
		return 'Fine. Be that way!';
	}

	if (message.isAllCaps()) {
		return 'Woah, chill out!';
	}

	if (message.endsWith('?')) {
		return 'Sure.';
	}

	return 'Whatever.';
}