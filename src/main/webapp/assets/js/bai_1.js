var updateDay = () => {
	let month = document.getElementById("month").value;
	let year = document.getElementById("year").value;
	let daySelect = document.getElementById("day");

	let daysInMonth;
	if (month == 2) {
		if ((year % 4 === 0 && year % 100 !== 0) || (year % 400 === 0)) {
			daysInMonth = 29;
		} else {
			daysInMonth = 28;
		}
	} else if (month == 4 || month == 6 || month == 9 || month == 11) {
		daysInMonth = 30;
	} else {
		daysInMonth = 31;
	}
	daySelect.innerHTML = "";
	for (let i = 1; i <= daysInMonth; i++) {
		let option = document.createElement("option");
		option.value = i;
		option.innerHTML = i;
		daySelect.appendChild(option);
	}
}