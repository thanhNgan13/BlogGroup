function clearInputs() {
  document.getElementById("username").value = "";
  document.getElementById("password").value = "";
}

document.addEventListener("DOMContentLoaded", function () {
  const dateElement = document.getElementById("current-date");

  function updateDate() {
    const now = new Date();
    const day = String(now.getDate()).padStart(2, "0");
    const month = String(now.getMonth() + 1).padStart(2, "0"); // Tháng trong JavaScript bắt đầu từ 0
    const year = now.getFullYear();
    const weekdays = [
      "Chủ Nhật",
      "Thứ Hai",
      "Thứ Ba",
      "Thứ Tư",
      "Thứ Năm",
      "Thứ Sáu",
      "Thứ Bảy",
    ];
    const weekday = weekdays[now.getDay()];

    dateElement.textContent = `${weekday}, ngày ${day} tháng ${month} năm ${year}`;
  }

  updateDate(); // Cập nhật ngày hiện tại
});

document.addEventListener("DOMContentLoaded", function () {
  const clockElement = document.getElementById("clock");

  function updateClock() {
    const now = new Date();
    const hours = String(now.getHours()).padStart(2, "0");
    const minutes = String(now.getMinutes()).padStart(2, "0");
    const seconds = String(now.getSeconds()).padStart(2, "0");
    clockElement.textContent = `${hours}:${minutes}:${seconds}`;
  }

  setInterval(updateClock, 1000);
  updateClock(); // Cập nhật ngay lập tức khi tải trang
});
