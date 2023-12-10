CREATE DATABASE blog;

USE blog;

CREATE TABLE user (
	id varchar(10) not null,
	username varchar(255) not null,
    password varchar(255) not null,
	PRIMARY KEY (id)
);

CREATE TABLE member(
  id varchar(10) not NULL,
  hoten text DEFAULT NULL,
  ngaysinh date DEFAULT NULL,
  sdt text DEFAULT NULL,
  diachi text DEFAULT NULL,
  email text DEFAULT NULL,
  noidung text DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (id) REFERENCES user(id)
);

INSERT INTO user (id, username, password) VALUES
('102210219', 'thanhNgan13', '12345'),
('102210237', 'chucchuc', '12345'),
('102210214', 'user03', '12345');


INSERT INTO member (id, hoten, ngaysinh, sdt, diachi, email, noidung) VALUES
('102210237', 'Phạm Trần Thanh Trúc', '2003-07-20', '0363614058', 'Hòa Xuân, Cẩm Lệ, Đà Nẵng', 'trucpham.dn.vn@gmail.com', 'Xin chào các bạn. Mình là Thanh Trúc, hiện là sinh viên năm 3 của Khoa Công nghệ thông tin Trường Đại học Bách Khoa - Đại học Đà Nẵng.\r\n\r\nCho đến thời điểm hiện tại, mình vẫn rất hãnh diện khi trở thành sinh viên của khoa Công nghệ thông tin nói riêng và của trường Bách Khoa nói chung.\r\n\r\nỞ đây, mình được tiếp xúc với rất nhiều bạn bè học rất giỏi, với rất nhiều thầy cô luôn khiến mình cảm thấy rất ngưỡng mộ.\r\n\r\nVới hệ thống chương trình được nghiên cứu kỹ lưỡng, mình được học rất nhiều kiến thức chuyên ngành, được học lý thuyết kết hợp song song với thực hành nên ít khi cảm thấy bị mông lung.\r\n\r\nTuy nhiên, nhiều lúc mình cũng cảm thấy khá áp lực và mệt mỏi với lượng kiến thức lớn cần nạp vào và vô số các bài tập lớn nhỏ khác nhau. Đặc biệt ở giai đoạn năm 3 - năm 4 này, hầu hết bạn bè của mình (và bao gồm cả mình) cảm thấy khá áp lực với vấn đề đi thực tập sớm, đi làm sớm và ra trường đúng hạn.\r\n\r\nHy vọng mình sẽ ra trường với số điểm GPA thật cao và được đi làm với mức lương đáng mong ước. Điều ước thì đâu có tốn phí. Hãy cùng mình ước thật cao và thật nỗ lực biến điều ước thành sự thật nhé.'),
('102210219', 'Phan Thành Ngân', '2003-02-24', '0354126975', 'Liên Chiểu, Đà Nẵng', 'pthngan@gmail.com', 'Xin chào các bạn. Mình là Thành Ngân'),
('102210214', 'Trương Quang Lộc', '2003-01-01', '0123456789', 'Liên Chiểu, Đà Nẵng', 'pthngan@gmail.com', 'Xin chào các bạn. Mình là Quang Lộc');

    