INSERT INTO `districts` (`id`, `name`) VALUES
(1, 'Quận Ba Đình'),
(2, 'Quận Hoàn Kiếm'),
(3, 'Quận Tây Hồ'),
(4, 'Quận Long Biên'),
(5, 'Quận Cầu Giấy'),
(6, 'Quận Đống Đa'),
(7, 'Quận Hai Bà Trưng'),
(8, 'Quận Hoàng Mai'),
(9, 'Quận Thanh Xuân'),
(10, 'Quận Hà Đông');

-- --------------------------------------------------------

INSERT INTO `services` (`id`, `service_name`) VALUES
(3, 'Ăn uống'),
(2, 'Chỗ để xe'),
(1, 'Điều hoà'),
(4, 'Két an toàn');
-- --------------------------------------------------------

INSERT INTO `users` (`id`, `username`, `password`, `avatar_url`, `DOB`, `address`, `phone_number`, `role`) VALUES
(1, 'hoangdh', '123', 'https://i.pinimg.com/originals/1c/4d/86/1c4d86c2964fdec5b7c07a49869b7487.jpg', '2001-01-01 00:00:00', '20 Ô Chợ Dừa, Ô Chợ Dừa, Đống Đa, Hà Nội', '0974123123', '0'),
(2, 'minhnd', '123', 'https://i.imgflip.com/1ylna6.jpg', '2000-12-08 00:00:00', '23 Tây Sơn, Ô Chợ Dừa, Đống Đa, Hà Nội', '0986123490', '0'),
(3, 'dungnd', '123', 'https://i.pinimg.com/736x/5f/f6/f5/5ff6f5fccd2b704ad1618406081fda22.jpg', '2023-02-10 00:00:00', '50 Trần Đại Nghĩa, Bách Khoa, Hai Bà Trưng, Hà Nội', '0935791235', '0'),
(4, 'tuvx', '123', 'https://i.pinimg.com/550x/32/e8/ca/32e8caf2dd09d76cbd55cc406a0ab6e7.jpg', '2003-10-08 00:00:00', '87 Bùi Ngọc Dương, Bạch Mai, Hai Bà Trưng, Hà Nội', '0269336281', '0'),
(5, 'anhnl', '123', 'https://img.buzzfeed.com/buzzfeed-static/static/2015-01/7/20/enhanced/webdr10/original-27611-1420679166-17.jpg', '2005-03-08 00:00:00', '8 Lê Thạch, Tràng Tiền, Hoàn Kiếm, Hà Nội', '0237381696', '0');

-- --------------------------------------------------------

INSERT INTO `workspaces` (`id`, `name`, `opening_hour`, `closing_hour`, `description`, `phone_number`, `address`, `status`, `price`, `lat`, `long`, `average_rating`, `district_id`) VALUES
(1, 'InFact coffee', '08:00:00', '19:00:00', 'InFact là địa điểm cafe để học bài, làm việc lý tưởng mà bạn không nên bỏ qua ở Hà Nội. Quán trở nên nổi tiếng và được nhiều bạn trẻ lui tới nhờ không gian yên tĩnh tuyệt đối. Nhân viên nhỏ nhẹ, lễ phép và phong cách trang trí quán khá đơn giản nhưng không kém phần tinh tế, sang trọng.', '0862828342', '342 Bà Triệu, quận Hai Bà Trưng, Hà Nội', '0', 30000, 21.0090196, 105.8489215, 4.70, 7),
(2, 'Là Việt', '07:00:00', '21:00:00', 'Không gian quán được trang trí chủ yếu với tông màu vàng và trắng bắt mắt,  đậm chất Việt Nam. Có 2 tầng, tuy nhiên nếu để là nơi học tập, làm việc thì bạn nên chọn tầng 2 sẽ thích hợp hơn hoặc ra không gian ngoài trời sẽ có nhiều bàn rộng, không khí cũng thoáng mát, thích hợp cho học nhóm hoặc làm việc.\r\n', '0866845558', 'Số 3 Ngõ 45 Hàng Bún, Nguyễn Trung Trực, Ba Đình, Hà Nội', '1', 40000, 21.0417887, 105.8452317, 4.60, 1),
(3, 'Tranquil Books & Coffee', '08:00:00', '22:00:00', 'Nếu bạn đang tìm một quán cà phê yên tĩnh thì chắc chắn đây là nơi đáp ứng được yêu cầu của bạn. Tọa lại tại vị trí đắc địa giữa lòng thủ đô, nhưng quán lại có không gian yên tĩnh để bạn có thể tập trung học tập, làm việc.', '0395049075', '5 Nguyễn Quang Bích, Cửa Đông, Hoàn Kiếm, Hà Nội', '1', 45000, 21.0325127, 105.845655, 4.60, 2),
(4, 'Lò Xo Coffee & Bakery', '07:30:00', '21:00:00', 'Nằm trong một con ngõ nhỏ, có ban công nhìn ra phố Dã Tượng rợp bóng cây xanh, Lò Xo Coffee & Bakery thích hợp cho dân văn phòng trong khu vực này ghé qua để nghỉ trưa sau khi ăn, do đó ở đây thường khá đông khách vào buổi trưa.\r\n\r\nVào các giờ khác, không gian của quán rất thích hợp để bạn đến học tập, làm việc một mình hay trao đổi công việc, làm việc nhóm đều ổn. ', '0333206210', '10 Dã Tượng, quận Hoàn Kiếm, Hà Nội', '0', 28000, 21.0235628, 105.8464901, 4.30, 2),
(5, 'Xofa Café & Bistro', '07:00:00', '21:00:00', 'Điểm đặc biệt ở Xofa Café & Bistro là có phục vụ cả đồ uống, bánh ngọt và cả đồ ăn mặn cho bạn thưởng thức. Trước đây quán mở cửa 24/7, nhưng do dịch bệnh nên hiện tại quán chỉ mở đến 21h00.\r\n\r\nKhông gian quán rộng và có cả không gian ngoài trời mát mẻ. Bên trong quán có 2 tầng, thích hợp cho những buổi trò chuyện cần không gian riêng tư, ấm cúng hay đơn giản là nơi để học bài, làm việc.\r\n\r\nCác món ăn, đồ uống ở đây được chế biến theo nhiều phong cách, từ nhiều nền văn hóa khác nhau nên rất ấn tượng khi bạn được thưởng thức lần đầu.', '02437171555', '14 Tống Duy Tân, quận Hoàn Kiếm, Hà Nội', '2', 50000, 21.0294076, 105.8435796, 4.00, 2),
(6, 'BEYOU Tea & Coffee', '07:30:00', '23:00:00', 'BEYOU Tea & Coffee có khách hàng phần lớn là sinh viên và nhân viên văn phòng, họ chọn đây là nơi để học tập, làm việc, trò chuyện cùng bạn bè hay đơn giản là nơi để thư giãn sau những giờ làm việc căng thẳng.\r\n\r\nQuán được thiết kế theo phong cách Industrial tạo cảm giác gần gũi và ấm áp. Bên cạnh đó, quán sử dụng cửa kính nên có thể đón ánh sáng tự nhiên, không gian rộng rãi, thoáng mát, vô cùng yên tĩnh.\r\n\r\nĐặc biệt, menu của quán cũng là điểm nhấn sáng giá với nhiều đồ uống ngon như cà phê máy, trà hoa quả, nước ép, đá xay,...đáp ứng đa dạng nhu cầu của khách hàng.', '0328606266', 'Số 6, ngõ 58, Nguyễn Chí Thanh, Đống Đa', '1', 35000, 21.0222934, 105.8093314, 4.40, 6),
(7, 'Cuppa Coffee', '07:00:00', '23:00:00', 'Từ bên ngoài, bạn sẽ bị thu hút với kiến trúc độc đáo của The Cuppa Coffee, bên trong quán cũng được thiết kế theo phong cách vintage tạo cảm giác gần gũi, ấm cúng. Không gian quán khá rộng rãi với 2 tầng lầu có khu vực ngoài trời và cả trong nhà.\r\n\r\nNếu bạn có nhu cầu học tập, làm việc cần sự yên tĩnh thì tầng 2 của quán sẽ rất thích hợp dành cho bạn. Ngoài ra, menu của quán cũng khá đa dạng với các loại cà phê Ý, cà phê Việt Nam, các loại trà trái cây, sữa chua, nước ép và đặc biệt có phục vụ bánh ngọt thơm ngon cho bạn thưởng thức.', '02432005153', '66A Hoàng Cầu, Chợ Dừa, Đống Đa, Hà Nội', '0', 35000, 21.0158957, 105.821095, 3.70, 6),
(8, 'Thư viện Tạ Quang Bửu', '08:00:00', '21:00:00', 'Thư viện trường Đại học Bách Khoa Hà Nội được thành lập từ năm 1956, ngay sau ngày thành lập trường. Năm 2008, thư viện của trường chính thức tách ra hoạt động độc lập, đổi tên thành thư viện Tạ Quang Bửu. Thư viện Tạ Quang Bửu là một trong những thư viện lớn nhất Việt Nam với 10 tầng, có tổng diện tích 37 nghìn mét vuông, rất thuận tiện cho việc học tập và nghiên cứu của sinh viên.', '02438692243', '1 Đại Cồ Việt, Bách Khoa, Hai Bà Trưng, Hà Nội', '2', 0, 21.0044106, 105.8439888, 4.70, 7),
(9, 'Thư viện Hà Nội', '08:00:00', '17:00:00', 'Đây là một trong những thư viện lớn và nổi tiếng nhất ở Hà Nội nằm trên đường Bà Triệu, quận Hoàn Kiếm mà người yêu sách nhất định phải đến một lần. Do lịch sử hình thành khá sớm (từ năm 1956) mà độc giả có thể tìm thấy những bản sách cũ, quý hiếm mà nơi khác khó có được.\r\n\r\nThư viện có số đầu sách lên đến hơn 300.000 cuốn cùng hàng trăm loại báo, tạp chí, sách nghiên cứu và nhiều sách ngoại văn, sách cổ hiếm khác. Thư viện còn có hơn 2000 sách chữ nổi để phục vũ độc giả khiếm thị.', '02438254817', '54E Trần Hưng Đạo, Hàng Bài, Hoàn Kiếm, Hà Nội, Vietnam', NULL, 0, 21.0216855, 105.8480252, 4.10, 2),
(10, 'Thư viện Quốc gia Việt Nam', '08:00:00', '22:00:00', 'Đây là thư viện rất phong phú các tài liệu phục vụ công tác học tập, nghiên cứu… Thư viện nằm trong không gian cây xanh khá yên tĩnh và thoáng mát, tạo cảm giác gần gũi cho người đọc. Bên trong là hệ thống sách phong phú thuộc nhiều lĩnh vực nghiên cứu và đọc hiểu khác nhau. Sách được sắp xếp khá khoa học và dễ tìm. Không gian đọc sách yên tĩnh và khá đơn sơ. Thủ tục làm thẻ có thể thực hiện vào cả ngày thứ bảy.', '02438255397', '31 P. Tràng Thi, Trần Hưng Đạo, Hoàn Kiếm, Hà Nội, Vietnam', '1', 0, 21.0260338, 105.8467153, 4.30, 2);
-- --------------------------------------------------------

INSERT INTO `workspaces_services` (`id`, `workspace_id`, `service_id`, `description`) VALUES
(1, 6, 2, NULL),
(2, 6, 1, NULL),
(3, 6, 3, NULL),
(4, 7, 3, NULL),
(5, 7, 2, NULL),
(6, 1, 2, NULL),
(7, 1, 3, NULL),
(8, 1, 1, NULL),
(9, 2, 3, NULL),
(10, 2, 2, NULL),
(11, 2, 1, NULL),
(12, 4, 3, NULL),
(13, 4, 2, NULL),
(14, 4, 4, NULL),
(15, 9, 4, NULL),
(16, 9, 1, NULL),
(17, 10, 1, NULL),
(18, 10, 2, NULL),
(19, 10, 4, NULL),
(20, 8, 2, NULL),
(21, 8, 4, NULL),
(22, 8, 1, NULL),
(23, 3, 3, NULL),
(24, 3, 2, NULL),
(25, 5, 3, NULL);

-- --------------------------------------------------------

INSERT INTO `workspaces_images` (`id`, `workspace_id`, `image_url`, `created_at`, `updated_at`) VALUES
(1, 6, 'https://cdn.tgdd.vn/Files/2021/12/14/1404397/10-quan-cafe-yen-tinh-o-ha-noi-de-hoc-va-lam-viec-tot-nhat-202112142135375656.jpg', NULL, NULL),
(2, 7, 'https://toplist.vn/images/800px/the-cuppa-coffee-873616.jpg', NULL, NULL),
(3, 1, 'https://znews-photo.zadn.vn/w1024/Uploaded/sgogtn/2020_02_03/IMG_3012_1.JPG', NULL, NULL),
(4, 2, 'https://kenh14cdn.com/2020/6/27/img7661-1593231971489991996472.jpg', NULL, NULL),
(5, 4, 'https://cdn.tgdd.vn/Files/2021/12/14/1404397/10-quan-cafe-yen-tinh-o-ha-noi-de-hoc-va-lam-viec-tot-nhat-202112142206017800.jpg', NULL, NULL),
(6, 9, 'https://cafefcdn.com/203337114487263232/2023/7/20/z42707525381121fcf93cb47cdb7d7d6250ddcd10c39942023apr20013352682-16898910901091736733316-1689866414984-16898664154121382271271.jpg', NULL, NULL),
(7, 10, 'https://upload.wikimedia.org/wikipedia/commons/9/98/Thu-vien-quoc-gia-viet-nam-new.jpg', NULL, NULL),
(8, 8, 'https://upload.wikimedia.org/wikipedia/commons/5/53/Th%C6%B0_vi%E1%BB%87n_T%E1%BA%A1_Quang_B%E1%BB%ADu_.jpg', NULL, NULL),
(9, 3, 'https://toidicafe.vn/static/images/place/tranquil-books-coffee/e3bf959b-79fa-46be-94ab-a4dd91a01d01.jpg', NULL, NULL),
(10, 5, 'https://cdn.tgdd.vn/Files/2021/12/14/1404397/10-quan-cafe-yen-tinh-o-ha-noi-de-hoc-va-lam-viec-tot-nhat-202112142135592716.jpg', NULL, NULL);

-- --------------------------------------------------------

INSERT INTO `reviews` (`id`, `user_id`, `workspace_id`, `space_rating`, `wifi_rating`, `price_rating`, `average_rating`, `comment`, `created_at`, `updated_at`) VALUES
(1, 5, 8, 4.60, 4.40, 5.00, 4.67, 'Một trong những điều mình tự hào tại BKHN - thư viện to nhất ĐNA. Thư viện to thiệt, nhiều phòng học, nhiều sách chuyên ngành. Giờ quét mã trên đt rất tiện, không cần thẻ sv nữa. Mình hầu như đi hết các tầng mà cho phép sv đến của thư viện rồi. Nhưng mà wifi trong TV không tốt lắm', NULL, NULL),
(2, 4, 5, 5.00, 2.30, 2.10, 3.13, 'Đi ngang thấy quán đẹp vào uống thử nhưng thất vọng. Mình order 1 cốc Nâu đá (cà phê sữa) nhưng nó rất tệ, một món nước bình thường đã pha không ra gì thì mình không bàn đến đồ ăn. Điểm cộng duy nhất là view mát mẻ, không gian yên tĩnh và thoáng.', NULL, NULL),
(3, 1, 1, 5.00, 5.00, 5.00, 5.00, 'Ui focus zone ở đây còn yên tĩnh hơn cả workspace luôn ý. Rất hiệu quả để học hoặc làm việc. Các bạn nhân viên thân thiện, lịch sự. Đồ uống thì 1 cốc tương đối nhỏ, không phải ngon xuất sắc nhưng cũng ko quá tệ. Nói chung là rất ổn nha, mình sẽ quay lại nhiều.', NULL, NULL),
(4, 2, 4, 4.50, 4.00, 4.00, 4.17, 'Đồ uống vừa miệng, đa dạng. Tôn trọng việc khách không thích đường, nên để riêng. Không gian dễ chịu, riêng tư. ', NULL, NULL),
(5, 3, 10, 4.50, 2.40, 4.20, 3.70, 'Phí làm thẻ 120k cho 1 năm. Có 4 tầng từ tầng 2 lên tầng 5. Đều rộng rãi, thoáng mát. Ngồi cả ngày học tập, làm việc thoải mái.', NULL, NULL);

-- --------------------------------------------------------

INSERT INTO `reviews_images` (`id`, `review_id`, `image_url`) VALUES
(1, 4, 'https://nhahangso.cdn.vccloud.vn/wp-content/uploads/2022/10/quan-cafe-hoc-bai-o-ha-noi-1.webp'),
(2, 2, 'https://toplist.vn/images/800px/xofa-cafe-amp-bistro-592783.jpg'),
(3, 3, 'https://cdn.alongwalk.info/vn/wp-content/uploads/2023/04/18102711/infact-coffee-quan-ca-phe-thich-hop-de-chay-deadline1681763231.jpg'),
(4, 5, 'https://toquoc.mediacdn.vn/280518851207290880/2022/11/19/a3a217820copy-16687908365302061457355.jpg'),
(5, 1, 'https://vuthuvien.bvhttdl.gov.vn/wp-content/uploads/2022/01/B537a.jpg');
