INSERT INTO `categories` (`id`, `category_name`) VALUES
(1, 'Cafe'),
(2, 'Thư Viện'),
(3, 'Workspace)');

-- --------------------------------------------------------

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
(10, 'Quận Hà Đông'),
(11, 'Quận Bắc Từ Liêm'),
(12, 'Quận Nam Từ Liêm'),
(13, 'Thị Xã Sơn Tây'),
(14, 'Huyện Chương Mỹ'),
(16, 'Huyện Đan Phượng'),
(17, 'Huyện Đông Anh'),
(18, 'Huyện Gia Lâm'),
(19, 'Huyện Hoài Đức'),
(20, 'Huyện Mê Linh'),
(21, 'Huyện Mỹ Đức'),
(22, 'Huyện Phú Xuyên'),
(23, 'Huyện Phúc Thọ'),
(24, 'Huyện Quốc Oai'),
(25, 'Huyện Sóc Sơn'),
(26, 'Huyện Thạch Thất'),
(27, 'Huyện Thanh Oai'),
(28, 'Huyện Thanh Trì'),
(29, 'Huyện Thường Tín'),
(30, 'Huyện Ứng Hòa');

-- --------------------------------------------------------

INSERT INTO `services` (`id`, `service_name`) VALUES
(1, 'Wifi'),
(2, 'Phòng riêng');

-- --------------------------------------------------------

INSERT INTO `users` (`id`, `username`, `password`, `avatar_url`, `DOB`, `address`, `phone_number`, `role`) VALUES
(1, 'hoangdh', '123', 'https://i.pinimg.com/originals/1c/4d/86/1c4d86c2964fdec5b7c07a49869b7487.jpg', '2001-01-01 00:00:00', '20 Ô Chợ Dừa, Ô Chợ Dừa, Đống Đa, Hà Nội', '0974123123', '0'),
(2, 'minhnd', '123', 'https://i.imgflip.com/1ylna6.jpg', '2000-12-08 00:00:00', '23 Tây Sơn, Ô Chợ Dừa, Đống Đa, Hà Nội', '0986123490', '0'),
(3, 'dungnd', '123', 'https://i.pinimg.com/736x/5f/f6/f5/5ff6f5fccd2b704ad1618406081fda22.jpg', '2023-02-10 00:00:00', '50 Trần Đại Nghĩa, Bách Khoa, Hai Bà Trưng, Hà Nội', '0935791235', '0'),
(4, 'tuvx', '123', 'https://i.pinimg.com/550x/32/e8/ca/32e8caf2dd09d76cbd55cc406a0ab6e7.jpg', '2003-10-08 00:00:00', '87 Bùi Ngọc Dương, Bạch Mai, Hai Bà Trưng, Hà Nội', '0269336281', '0'),
(5, 'anhnl', '123', 'https://img.buzzfeed.com/buzzfeed-static/static/2015-01/7/20/enhanced/webdr10/original-27611-1420679166-17.jpg', '2005-03-08 00:00:00', '8 Lê Thạch, Tràng Tiền, Hoàn Kiếm, Hà Nội', '0237381696', '0');

-- --------------------------------------------------------

INSERT INTO `workspaces` (`id`, `name`, `opening_hour`, `closing_hour`, `description`, `phone_number`, `address`, `status`, `lat`, `long`, `average_rating`, `district_id`, `price_min`, `price_max`, `web_url`, `category_id`) VALUES
(1, 'InFact coffee', '08:00:00', '19:00:00', 'InFact là địa điểm cafe để học bài, làm việc lý tưởng mà bạn không nên bỏ qua ở Hà Nội. Quán trở nên nổi tiếng và được nhiều bạn trẻ lui tới nhờ không gian yên tĩnh tuyệt đối. Nhân viên nhỏ nhẹ, lễ phép và phong cách trang trí quán khá đơn giản nhưng không kém phần tinh tế, sang trọng.', '0862828342', '342 Bà Triệu, quận Hai Bà Trưng, Hà Nội', '0', 21.009020, 105.848922, 4.70, 7, 20000, 50000, '', 1),
(2, 'Là Việt', '07:00:00', '21:00:00', 'Không gian quán được trang trí chủ yếu với tông màu vàng và trắng bắt mắt,  đậm chất Việt Nam. Có 2 tầng, tuy nhiên nếu để là nơi học tập, làm việc thì bạn nên chọn tầng 2 sẽ thích hợp hơn hoặc ra không gian ngoài trời sẽ có nhiều bàn rộng, không khí cũng thoáng mát, thích hợp cho học nhóm hoặc làm việc.\r\n', '0866845558', 'Số 3 Ngõ 45 Hàng Bún, Nguyễn Trung Trực, Ba Đình, Hà Nội', '1', 21.041789, 105.845232, 4.60, 1, 30000, 60000, 'https://laviet.coffee/ha-noi/', 1),
(3, 'Tranquil Books & Coffee', '08:00:00', '20:00:00', 'Nếu bạn đang tìm một quán cà phê yên tĩnh thì chắc chắn đây là nơi đáp ứng được yêu cầu của bạn. Tọa lại tại vị trí đắc địa giữa lòng thủ đô, nhưng quán lại có không gian yên tĩnh để bạn có thể tập trung học tập, làm việc.', '0395049075', '5 Nguyễn Quang Bích, Cửa Đông, Hoàn Kiếm, Hà Nội', '1', 21.032513, 105.845655, 4.60, 2, 10000, 70000, '', 1),
(4, 'Lò Xo Coffee & Bakery', '07:30:00', '21:00:00', 'Nằm trong một con ngõ nhỏ, có ban công nhìn ra phố Dã Tượng rợp bóng cây xanh, Lò Xo Coffee & Bakery thích hợp cho dân văn phòng trong khu vực này ghé qua để nghỉ trưa sau khi ăn, do đó ở đây thường khá đông khách vào buổi trưa.\r\n', '0333206210', '10 Dã Tượng, quận Hoàn Kiếm, Hà Nội', '0', 21.023563, 105.846490, 4.30, 2, 30000, 60000, '', 1),
(5, 'Xofa Café & Bistro', '07:00:00', '21:00:00', 'Điểm đặc biệt ở Xofa Café & Bistro là có phục vụ cả đồ uống, bánh ngọt và cả đồ ăn mặn cho bạn thưởng thức. Trước đây quán mở cửa 24/7, nhưng do dịch bệnh nên hiện tại quán chỉ mở đến 21h00.\r\n', '02437171555', '14 Tống Duy Tân, quận Hoàn Kiếm, Hà Nội', '2', 21.029408, 105.843580, 4.00, 2, 10000, 70000, 'https://xofacafebistro.com/', 1),
(6, 'BEYOU Tea & Coffee', '07:30:00', '23:00:00', 'BEYOU Tea & Coffee có khách hàng phần lớn là sinh viên và nhân viên văn phòng, họ chọn đây là nơi để học tập, làm việc, trò chuyện cùng bạn bè hay đơn giản là nơi để thư giãn sau những giờ làm việc căng thẳng.\r\n', '0328606266', 'Số 6, ngõ 58, Nguyễn Chí Thanh, Đống Đa', '1', 21.022293, 105.809331, 4.40, 6, 15000, 80000, '', 1),
(7, 'Cuppa Coffee', '07:00:00', '23:00:00', 'Từ bên ngoài, bạn sẽ bị thu hút với kiến trúc độc đáo của The Cuppa Coffee, bên trong quán cũng được thiết kế theo phong cách vintage tạo cảm giác gần gũi, ấm cúng. Không gian quán khá rộng rãi với 2 tầng lầu có khu vực ngoài trời và cả trong nhà.\r\n', '02432005153', '66A Hoàng Cầu, Chợ Dừa, Đống Đa, Hà Nội', '0', 21.015896, 105.821095, 3.70, 6, 20000, 80000, '', 1),
(8, 'Thư viện Tạ Quang Bửu', '08:00:00', '21:00:00', 'Thư viện trường Đại học Bách Khoa Hà Nội được thành lập từ năm 1956, ngay sau ngày thành lập trường. Năm 2008, thư viện của trường chính thức tách ra hoạt động độc lập, đổi tên thành thư viện Tạ Quang Bửu. Thư viện Tạ Quang Bửu là một trong những thư viện lớn nhất Việt Nam với 10 tầng, có tổng diện tích 37 nghìn mét vuông, rất thuận tiện cho việc học tập và nghiên cứu của sinh viên.', '02438692243', '1 Đại Cồ Việt, Bách Khoa, Hai Bà Trưng, Hà Nội', '2', 21.004411, 105.843989, 4.70, 7, 0, 70000, 'https://library.hust.edu.vn/', 2),
(9, 'Thư viện Hà Nội', '08:00:00', '17:00:00', 'Đây là một trong những thư viện lớn và nổi tiếng nhất ở Hà Nội nằm trên đường Bà Triệu, quận Hoàn Kiếm mà người yêu sách nhất định phải đến một lần. Do lịch sử hình thành khá sớm (từ năm 1956) mà độc giả có thể tìm thấy những bản sách cũ, quý hiếm mà nơi khác khó có được.\r\n', '02438254817', '54E Trần Hưng Đạo, Hàng Bài, Hoàn Kiếm, Hà Nội, Vietnam', '0', 21.021686, 105.848025, 4.10, 2, 10000, 100000, 'https://www.thuvienhanoi.org.vn/', 2),
(10, 'Thư viện Quốc gia Việt Nam', '08:00:00', '22:00:00', 'Đây là thư viện rất phong phú các tài liệu phục vụ công tác học tập, nghiên cứu… Thư viện nằm trong không gian cây xanh khá yên tĩnh và thoáng mát, tạo cảm giác gần gũi cho người đọc. Bên trong là hệ thống sách phong phú thuộc nhiều lĩnh vực nghiên cứu và đọc hiểu khác nhau. Sách được sắp xếp khá khoa học và dễ tìm. Không gian đọc sách yên tĩnh và khá đơn sơ. Thủ tục làm thẻ có thể thực hiện vào cả ngày thứ bảy.', '02438255397', '31 P. Tràng Thi, Trần Hưng Đạo, Hoàn Kiếm, Hà Nội, Vietnam', '0', 21.026034, 105.846715, 4.30, 2, 30000, 120000, 'https://nlv.gov.vn/', 2),
(11, 'COGO Coworking Space', '07:00:00', '21:00:00', 'Được đầu tư theo đúng tiêu chuẩn coworking space quốc tế, Cogo với 2 chi nhánh tại Hà Nội tọa lạc tại các tòa nhà hạng A-B+ tại trung tâm nội thành Hà Nội. Với diện tích mặt bằng từ 2000m2-3000m2 cùng nội thất và thiết kế sang trọng, bạn sẽ có thể dễ dàng lựa chọn cho mình một chỗ ngồi làm việc ưng ý và thoải mái nhất.', '02435374811', '1 P. Thái Hà, Trung Liệt, Đống Đa, Hà Nội', '0', 21.009236, 105.821136, 4.00, 6, 200000, 230000, 'https://cogo.vn/', 3),
(12, 'eSpace Coworking', '08:00:00', '20:00:00', 'Tọa lạc tại trung tâm thủ đô Hà Nội và chỉ cách Hồ Hoàn Kiếm 2 phút đi bộ, eSpace coworking space mang đến một nơi làm việc thuận tiện cho công việc của bạn và dễ dàng tiếp cận các khu vực lân cận. Ngoài ra, tại eSpace còn thường xuyên tổ chức các sự kiện giao lưu hấp dẫn. Cụ thể, những chủ đề đa dạng từ kinh doanh cho tới đời sống, từ hội thảo cho đến những buổi giao lưu, giúp các thành viên ở đây thông qua đó có thể căn bằng giữa công việc – cuộc sống cũng như hòa nhập và kết nối lẫn nhau.', '0916806089', '1 Đinh Lễ, Tràng Tiền, Hoàn Kiếm, Hà Nội', '0', 21.025437, 105.852016, 4.60, 2, 200000, 270000, 'http://espacework.com/', 3),
(13, 'Y-Nest Coworking Space', '08:30:00', '21:30:00', 'Nếu bạn chưa bao giờ thử trải nghiệm mô hình không gian làm việc chung, Y-Nest là một điểm đến thích hợp với không gian rộng rãi, nhiều cây xanh và đặc biệt giá thành khá rẻ. Đặc biệt, Y-Nest coworking space tọa lạc ở TTTM V+ nhờ đó có thể dễ dàng đáp ứng tất cả các nhu cầu của bạn mà không phải đi đâu xa trong ngày làm việc.', '02466641950', 'Tầng 4, Trung tâm thương mại V+, 505 Minh Khai, quận Hai Bà Trưng, Hà Nội', '1', 21.000536, 105.866910, 4.40, 7, 73000, 100000, 'https://www.coworker.com/vietnam/hanoi/y-nest-coworking-space', 3);

-- --------------------------------------------------------

INSERT INTO `workspaces_images` (`id`, `workspace_id`, `image_url`, `created_at`, `updated_at`) VALUES
(1, 6, 'https://cdn.tgdd.vn/Files/2021/12/14/1404397/10-quan-cafe-yen-tinh-o-ha-noi-de-hoc-va-lam-viec-tot-nhat-202112142135375656.jpg', '2023-12-21 00:49:13', '2023-12-22 00:49:13'),
(2, 7, 'https://toplist.vn/images/800px/the-cuppa-coffee-873616.jpg', '2023-12-21 00:49:13', '2023-12-21 00:49:13'),
(3, 1, 'https://znews-photo.zadn.vn/w1024/Uploaded/sgogtn/2020_02_03/IMG_3012_1.JPG', '2023-12-21 00:50:09', '2023-12-21 00:50:09'),
(4, 2, 'https://kenh14cdn.com/2020/6/27/img7661-1593231971489991996472.jpg', '2023-12-18 00:44:03', '2023-12-18 00:44:03'),
(5, 4, 'https://cdn.tgdd.vn/Files/2021/12/14/1404397/10-quan-cafe-yen-tinh-o-ha-noi-de-hoc-va-lam-viec-tot-nhat-202112142206017800.jpg', '2023-12-18 00:33:42', '2023-12-18 00:33:42'),
(6, 9, 'https://cafefcdn.com/203337114487263232/2023/7/20/z42707525381121fcf93cb47cdb7d7d6250ddcd10c39942023apr20013352682-16898910901091736733316-1689866414984-16898664154121382271271.jpg', '2023-12-18 00:44:03', '2023-12-18 00:44:03'),
(7, 10, 'https://upload.wikimedia.org/wikipedia/commons/9/98/Thu-vien-quoc-gia-viet-nam-new.jpg', '2023-12-18 00:33:42', '2023-12-18 00:33:42'),
(8, 8, 'https://upload.wikimedia.org/wikipedia/commons/5/53/Th%C6%B0_vi%E1%BB%87n_T%E1%BA%A1_Quang_B%E1%BB%ADu_.jpg', '2023-12-18 00:44:03', '2023-12-21 00:49:13'),
(9, 3, 'https://toidicafe.vn/static/images/place/tranquil-books-coffee/e3bf959b-79fa-46be-94ab-a4dd91a01d01.jpg', '2023-12-18 00:33:42', '2023-12-18 00:33:42'),
(10, 5, 'https://cdn.tgdd.vn/Files/2021/12/14/1404397/10-quan-cafe-yen-tinh-o-ha-noi-de-hoc-va-lam-viec-tot-nhat-202112142135592716.jpg', '2023-12-18 00:44:03', '2023-12-18 00:44:03'),
(11, 11, 'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_2048/https://smartos.space/wp-content/uploads/2021/08/1555497098_tnr-3-1-2-2048x944.jpg', '2023-12-18 00:44:03', '2023-12-18 00:44:03'),
(12, 12, 'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_1024/https://smartos.space/wp-content/uploads/2021/08/26961680_155040308613537_4736267254133951723_o.jpg', '2023-12-18 00:44:03', '2023-12-18 00:44:03'),
(13, 13, 'https://maisonoffice.vn/wp-content/uploads/2020/03/y-nest-coworking-space-minh-khai-1.jpg', '2023-12-18 00:44:03', '2023-12-18 00:44:03');

-- --------------------------------------------------------

INSERT INTO `reviews` (`id`, `user_id`, `workspace_id`, `space_rating`, `wifi_rating`, `price_rating`, `average_rating`, `comment`, `created_at`, `updated_at`) VALUES
(1, 5, 8, 4.60, 4.40, 5.00, 4.67, 'Một trong những điều mình tự hào tại BKHN - thư viện to nhất ĐNA. Thư viện to thiệt, nhiều phòng học, nhiều sách chuyên ngành. Giờ quét mã trên đt rất tiện, không cần thẻ sv nữa. Mình hầu như đi hết các tầng mà cho phép sv đến của thư viện rồi. Nhưng mà wifi trong TV không tốt lắm', '2023-12-18 00:33:42', '2023-12-18 00:33:42'),
(2, 4, 5, 5.00, 2.30, 2.10, 3.13, 'Đi ngang thấy quán đẹp vào uống thử nhưng thất vọng. Mình order 1 cốc Nâu đá (cà phê sữa) nhưng nó rất tệ, một món nước bình thường đã pha không ra gì thì mình không bàn đến đồ ăn. Điểm cộng duy nhất là view mát mẻ, không gian yên tĩnh và thoáng.', '2023-12-18 00:33:42', '2023-12-18 00:33:42'),
(3, 1, 1, 5.00, 5.00, 5.00, 5.00, 'Ui focus zone ở đây còn yên tĩnh hơn cả workspace luôn ý. Rất hiệu quả để học hoặc làm việc. Các bạn nhân viên thân thiện, lịch sự. Đồ uống thì 1 cốc tương đối nhỏ, không phải ngon xuất sắc nhưng cũng ko quá tệ. Nói chung là rất ổn nha, mình sẽ quay lại nhiều.', '2023-12-18 00:33:42', '2023-12-18 00:33:42'),
(4, 2, 4, 4.50, 4.00, 4.00, 4.17, 'Đồ uống vừa miệng, đa dạng. Tôn trọng việc khách không thích đường, nên để riêng. Không gian dễ chịu, riêng tư. ', '2023-12-18 00:33:42', '2023-12-18 00:33:42'),
(5, 3, 10, 4.50, 2.40, 4.20, 3.70, 'Phí làm thẻ 120k cho 1 năm. Có 4 tầng từ tầng 2 lên tầng 5. Đều rộng rãi, thoáng mát. Ngồi cả ngày học tập, làm việc thoải mái.', '2023-12-18 00:33:42', '2023-12-18 00:33:42'),
(6, 3, 6, 4.50, 3.50, 3.60, 3.87, 'Không gian thoáng mát , yên tĩnh , rất phù hợp cho những người muốn làm việc tự do. Đồ uống thì không ngon lắm nhưng so với giá tiền thì hợp lý. Tốc độ wifi dùng được . Nói chung là cảm thấy khá ổn', '2023-12-18 00:33:42', '2023-12-18 00:33:42'),
(7, 5, 2, 5.00, 5.00, 5.00, 5.00, 'Quán workspace này có mức giá hợp lý với chất lượng dịch vụ. Không gian làm việc tuyệt vời với mức giá này.Đồ uống rất ngon, thái độ nhân viên rất nhiệu tình. Tốc độ wifi rất ổn , làm việc không cảm thấy lang. Nói chung đánh giá rất cao.', '2023-12-18 00:39:19', '2023-12-18 00:39:19'),
(8, 1, 3, 4.00, 4.00, 4.00, 4.00, 'Không gian làm việc tại đây rất thoải mái và sáng tạo. Bàn làm việc riêng tư và không gian chia sẻ đều được thiết kế rất tốt.Đồ uống đa dạng , giá tiền phù hợp .Wifi có lúc dùng được có lúc không.', '2023-12-18 00:33:42', '2023-12-18 00:33:42'),
(9, 1, 7, 5.00, 4.00, 5.00, 4.67, 'Quán workspace này có mức giá hợp lý với chất lượng dịch vụ. Không gian làm việc tại đây rất thoải mái và sáng tạo. Bàn làm việc riêng tư và không gian chia sẻ đều được thiết kế rất tốt.Đồ uống ở đây thực sự ngon miệng và đa dạng. Có nhiều lựa chọn cho cả người thích cà phê và trà.Wifi ở đây rất nhanh và ổn định.', '2023-12-18 00:46:32', '2023-12-18 00:33:42'),
(10, 2, 1, 5.00, 3.50, 5.00, 4.50, 'Quán workspace này có mức giá hợp lý với chất lượng dịch vụ. Không gian làm việc tại đây rất thoải mái và sáng tạo. Bàn làm việc riêng tư và không gian chia sẻ đều được thiết kế rất tốt.Đồ uống ở đây thực sự ngon miệng và đa dạng. Có nhiều lựa chọn cho cả người thích cà phê và trà.Wifi ở đây rất nhanh và ổn định.', '2023-12-18 00:46:58', '2023-12-18 00:33:42'),
(11, 3, 2, 5.00, 4.00, 3.60, 4.20, 'Không gian làm viêc yên tĩnh , thoáng .Tốc độ wifi  ổn định .Đồ uống không ngon . So với giá thành thì khá là cao', '2023-12-18 00:47:35', '2023-12-18 00:33:42'),
(12, 3, 3, 4.50, 3.50, 4.00, 4.00, 'Đi ngang thấy quán đẹp vào uống thử nhưng thất vọng. Không gian làm việc tại đây rất thoải mái và sáng tạo. Điểm cộng duy nhất là view mát mẻ, không gian yên tĩnh và thoáng.', '2023-12-19 00:49:43', '2023-12-18 00:33:42'),
(13, 5, 4, 4.50, 5.00, 3.50, 4.33, 'Không gian thoáng mát , yên tĩnh , rất phù hợp cho những người muốn làm việc tự do.  Các bạn nhân viên thân thiện, lịch sự. Đồ uống thì 1 cốc tương đối nhỏ, không phải ngon xuất sắc nhưng cũng ko quá tệ. Nói chung là rất ổn nha, mình sẽ quay lại nhiều.', '2023-12-19 00:51:05', '2023-12-18 00:33:42'),
(14, 4, 6, 5.00, 5.00, 5.00, 5.00, 'Workspace này có đầy đủ các tiện nghi cần thiết. Không khí làm việc ở đây rất tràn ngập sự sáng tạo và động lực. Thường xuyên có các sự kiện và hoạt động giúp tạo cảm giác cộng đồng tích cực.', '2023-12-19 00:53:46', '2023-12-18 00:33:42'),
(15, 4, 5, 4.50, 4.00, 5.00, 4.50, 'Workspace này có đầy đủ các tiện nghi cần thiết. Sự thoải mái ở đây là điểm mạnh. Ghế ngồi êm ái, ánh sáng tự nhiên đủ, và không gian yên tĩnh, tạo điều kiện tốt cho công việc sáng tạo.Wifi ở đây rất nhanh và ổn định.', '2023-12-20 00:52:10', '2023-12-18 00:33:42'),
(16, 5, 7, 4.50, 4.50, 4.50, 4.50, 'Không gian làm việc ở đây rất rộng rãi và thoải mái. Có nhiều bàn làm việc và ghế ngồi, tạo cảm giác tự do và thoải mái khi làm việc.Dịch vụ hỗ trợ ở đây rất chuyên nghiệp. Nhân viên thân thiện và luôn sẵn sàng giúp đỡ khi có vấn đề.', '2023-12-22 00:54:32', '2023-12-18 00:33:42'),
(17, 1, 8, 5.00, 4.00, 5.00, 4.67, 'Workspace này có đầy đủ các tiện nghi cần thiết. Wifi ở đây rất nhanh và ổn định. Điều này giúp công việc diễn ra mượt mà mà không gặp sự cản trở từ vấn đề kết nối.', '2023-12-23 00:55:39', '2023-12-20 10:00:00'),
(18, 2, 9, 5.00, 5.00, 5.00, 5.00, 'Không gian làm viêc yên tĩnh , thoáng .Tốc độ wifi  ổn định . Không gian dễ chịu, riêng tư. ', '2023-12-22 00:57:29', '2023-12-21 01:00:04'),
(19, 3, 10, 5.00, 3.50, 5.00, 4.50, 'Thư viện to thiệt, nhiều phòng học, Không gian thoáng mát , yên tĩnh. Bàn làm việc riêng tư và không gian chia sẻ đều được thiết kế rất tốt.Wifi ở đây rất nhanh và ổn định.', '2023-12-20 00:58:28', '2023-12-18 00:33:42'),
(20, 4, 1, 5.00, 4.00, 5.00, 4.67, '\"Workspace này có đầy đủ các tiện nghi cần thiết. Từ máy chiếu, bảng trắng đến ổ cắm điện và USB, mọi thứ đều được chuẩn bị rất tốt.Wifi ở đây rất nhanh và ổn định. Điều này giúp công việc diễn ra mượt mà mà không gặp sự cản trở từ vấn đề kết nối.', '2023-12-24 00:59:48', '2023-12-18 00:33:42'),
(21, 5, 2, 4.50, 4.50, 4.50, 4.50, 'Workspace này thực sự là một môi trường sáng tạo. Bố trí không gian được thiết kế để kích thích ý tưởng mới và hỗ trợ quá trình sáng tạo.An ninh ở đây được đảm bảo rất tốt. Hệ thống kiểm soát truy cập và camera giám sát làm tăng cường sự yên tâm khi làm việc.', '2023-12-24 01:00:26', '2023-12-18 00:33:42'),
(22, 5, 3, 4.50, 3.50, 4.00, 4.00, 'Một ưu điểm lớn của workspace này là tính linh hoạt. Bạn có thể chọn từ nhiều khu vực làm việc khác nhau tùy thuộc vào nhu cầu và tâm trạng làm việc.Đồ uống ngon và nhân viên phục vụ nhiệt tình, tạo ra không khí thư giãn và tận hưởng công việc.', '2023-12-25 01:01:56', '2023-12-18 00:33:42'),
(23, 4, 4, 5.00, 4.00, 3.00, 3.00, 'Workspace này không chỉ là nơi làm việc mà còn có nhiều tiện ích phụ trợ, như phòng họp, phòng nghỉ, và khu vực giải trí, giúp tạo ra một môi trường làm việc đa dạng.', '2023-12-26 01:03:04', '2023-12-18 00:33:42'),
(24, 3, 5, 5.00, 5.00, 5.00, 5.00, 'Workspace này thực sự là một môi trường sáng tạo. Bố trí không gian được thiết kế để kích thích ý tưởng mới và hỗ trợ quá trình sáng tạo.An ninh ở đây được đảm bảo rất tốt. Hệ thống kiểm soát truy cập và camera giám sát làm tăng cường sự yên tâm khi làm việc.', '2023-12-24 01:04:46', '2023-12-18 00:33:42'),
(25, 2, 6, 4.50, 4.50, 4.50, 4.50, 'Các nhân viên hỗ trợ kỹ thuật ở đây rất nhanh nhẹn và giải quyết vấn đề hiệu quả. Không gặp khó khăn khi cần hỗ trợ về kỹ thuật.Đồ uống ngon , giá cả phải chăng . Nói chung rất hài lòng', '2023-12-20 01:06:35', '2023-12-18 00:33:42'),
(26, 2, 6, 5.00, 4.00, 5.00, 4.67, 'Một trong những ưu điểm lớn của workspace này là sự yên tĩnh. Không gian được giữ nguyên vẹn, giúp tập trung tối đa vào công việc mà không bị xao lạc.Đồ uống ngon , giá cả rất phải chăng', '2023-12-20 01:15:34', '2023-12-20 01:15:34'),
(27, 1, 7, 5.00, 5.00, 5.00, 5.00, 'Một trong những ưu điểm lớn của workspace này là sự yên tĩnh. Không gian được giữ nguyên vẹn, giúp tập trung tối đa vào công việc mà không bị xao lạc.Đồ uống ngon , giá cả rất phải chăng', '2023-12-23 01:18:17', '2023-12-20 01:15:34'),
(28, 3, 8, 5.00, 4.00, 4.00, 3.33, 'Thiết kế nội thất ở đây rất hiện đại và chăm sóc đến từng chi tiết. Bàn làm việc và ghế ngồi không chỉ thoải mái mà còn mang đến cảm giác sang trọng.Workspace này tạo ra một cộng đồng làm việc tích cực. Các sự kiện networking và các hoạt động xã hội thường xuyên tổ chức, tạo điều kiện cho mối quan hệ xã hội và kinh doanh.', '2023-12-22 01:19:10', '2023-12-20 01:15:34'),
(29, 1, 9, 5.00, 5.00, 5.00, 5.00, 'Không gian chia sẻ ở đây rất thoải mái và thân thiện. Sự giao lưu và chia sẻ ý tưởng giữa các nhóm làm việc là điểm mạnh đặc biệt.Workspace này tạo ra một cộng đồng làm việc tích cực. Các sự kiện networking và các hoạt động xã hội thường xuyên tổ chức, tạo điều kiện cho mối quan hệ xã hội và kinh doanh.', '2023-12-22 01:20:07', '2023-12-20 01:15:34'),
(30, 4, 10, 4.50, 4.50, 4.50, 4.50, 'Workspace này thực sự đặc biệt với sự đa dạng của không gian làm việc. Bạn có thể chọn từ không gian mở, phòng riêng tư, đến các khu vực làm việc ngoài trời, phù hợp với mọi nhu cầu làm việc.', '2023-12-15 01:20:53', '2023-12-20 01:15:34'),
(31, 2, 8, 5.00, 4.00, 5.00, 4.67, 'Ngoài không gian làm việc, có các khu vực thư giãn tại đây rất tốt. Phòng đọc sách, khu vườn, hay khu vực café đều là những điểm nổi bật cho những khoảnh khắc nghỉ ngơi.', '2023-12-14 01:21:48', '2023-12-20 01:15:34'),
(32, 5, 13, 4.40, 4.20, 4.00, 4.20, 'Không gian rộng, thoáng, đẹp.\r\nGiá tốt, phục vụ nhu cầu của team, cá nhân hoặc doanh nghiệp cỡ vừa ok.\r\nĐây cũng là địa điểm tổ chức sự kiện phù hợp cho các bên.\r\nNhân viên nhiệt tình, chu đáo, hỗ trợ chấm công cho các đơn vị thuê lâu dài.', '2023-12-20 01:15:34', '2023-12-20 01:15:34'),
(33, 3, 13, 4.60, 4.00, 4.30, 4.30, 'Mình rất hài lòng với không gian làm việc yên tĩnh, thoải mái ở đây. Có khu vực cây xanh tại nơi làm việc, tạo cảm hứng cho các bạn làm những công việc mang tính sáng tạo. Ngoài khu vực làm việc, còn có bàn ghế sofa để các bạn có thể  tiếp khách. Và khu vực gọi điện thoại riêng.\r\nCác bạn nhân viên làm việc với thái độ rất nhiệt tình. Nếu bạn đang cần không gian làm việc, hãy tới Ynest để trải nghiệm không gian.', '2023-12-20 01:15:34', '2023-12-20 01:15:34'),
(34, 1, 12, 4.00, 4.30, 4.00, 4.10, 'Không gian thoáng mát, xanh, sạch, đầy đủ tiện nghi phục vụ cho công việc. Nhân viên eSpace thì luôn nhiệt tình, chu đáo\r\nRất phù hợp để ngồi làm việc cá nhân hoặc theo nhóm nhé!!!', '2023-12-20 01:15:34', '2023-12-20 01:15:34'),
(35, 2, 12, 4.00, 3.90, 3.80, 3.90, 'không gian làm việc wifi tốt mát giá 150k/ngày cho khách lẻ đi thử cho biết', '2023-12-20 01:15:34', '2023-12-20 01:15:34'),
(38, 4, 11, 4.00, 4.00, 4.00, 4.00, 'Đội ngũ tư vấn bên đây vừa thân thiện, nhiệt tình mà còn chuyên nghiệp nữa. Hợp tác tìm thuê văn phòng COGO đã giúp tôi nhanh chóng tìm được văn phòng ưng ý.', '2023-12-20 01:15:34', '2023-12-20 01:15:34'),
(39, 5, 6, 4.20, 3.80, 3.80, 3.93, 'Không gian rộng rãi và yên tĩnh cho các đội nhóm cần nơi làm việc với chi phí hợp lý. Phần bãi đậu xe hơi đông và khó khăn khi ra vào.', '2023-12-20 01:15:34', '2023-12-20 01:15:34');

-- --------------------------------------------------------

INSERT INTO `reviews_images` (`id`, `review_id`, `image_url`) VALUES
(1, 4, 'https://nhahangso.cdn.vccloud.vn/wp-content/uploads/2022/10/quan-cafe-hoc-bai-o-ha-noi-1.webp'),
(2, 2, 'https://toplist.vn/images/800px/xofa-cafe-amp-bistro-592783.jpg'),
(3, 3, 'https://cdn.alongwalk.info/vn/wp-content/uploads/2023/04/18102711/infact-coffee-quan-ca-phe-thich-hop-de-chay-deadline1681763231.jpg'),
(4, 5, 'https://toquoc.mediacdn.vn/280518851207290880/2022/11/19/a3a217820copy-16687908365302061457355.jpg'),
(5, 1, 'https://vuthuvien.bvhttdl.gov.vn/wp-content/uploads/2022/01/B537a.jpg');

-- --------------------------------------------------------

INSERT INTO `workspaces_services` (`id`, `workspace_id`, `service_id`, `description`) VALUES
(1, 6, 2, NULL),
(2, 6, 1, NULL),
(5, 7, 2, NULL),
(6, 1, 2, NULL),
(8, 1, 1, NULL),
(10, 2, 2, NULL),
(11, 2, 1, NULL),
(13, 4, 2, NULL),
(16, 9, 1, NULL),
(17, 10, 1, NULL),
(18, 10, 2, NULL),
(20, 8, 2, NULL),
(22, 8, 1, NULL),
(24, 3, 2, NULL),
(25,11, 1, NULL),
(26,11, 2, NULL),
(27,12, 1, NULL),
(28,12, 2, NULL),
(29,13, 2, NULL),
(30,13, 1, NULL);
