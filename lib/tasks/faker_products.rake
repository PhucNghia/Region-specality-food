namespace :db do
  task faker_products: :environment do
    puts "Create Product"
    # North Products
    Product.create!(title: "Thịt trâu sấy", name: "Thịt trâu sấy", image: "product/thit_trau_say.jpg", price: 100000,
      discount: 10, status: "Còn hàng", quantity: 1000, region_id: 1, category_id: 1, provider_id: 1)
    Product.create!(title: "Bánh Đậu Xanh Hải Dương", name: "Bánh Đậu Xanh Hải Dương", image: "product/dau_xanh.jpg", price: 18000,
      discount: 10, status: "Còn hàng", quantity: 1000, region_id: 1, category_id: 1, provider_id: 1)
    Product.create!(title: "Su su Tam Đảo Vĩnh Phúc", name: "Su su Tam Đảo Vĩnh Phúc", image: "product/su_su.jpg", price: 99000,
      discount: 10, status: "Còn hàng", quantity: 1000, region_id: 1, category_id: 1, provider_id: 1)
    Product.create!(title: "Măng Nứa Tuyên Quang", name: "Măng Nứa Tuyên Quang", image: "product/mang_nua.jpg", price: 20000,
      discount: 10, status: "Còn hàng", quantity: 1000, region_id: 1, category_id: 1, provider_id: 1)
    Product.create!(title: "Chè Thái Nguyên", name: "Chè Thái Nguyên", image: "product/che_thai_nguyen.jpg", price: 50000,
      discount: 10, status: "Còn hàng", quantity: 1000, region_id: 1, category_id: 1, provider_id: 1)
    Product.create!(title: "Gạo nếp nương Điện Biên", name: "Gạo nếp nương Điện Biên", image: "product/nep_nuong.jpg", price: 60000,
      discount: 10, status: "Còn hàng", quantity: 1000, region_id: 1, category_id: 1, provider_id: 1)
    Product.create!(title: "Bánh đa Kế", name: "Bánh đa Kế", image: "product/banh_da_ke.jpg", price: 30000,
      discount: 10, status: "Còn hàng", quantity: 1000, region_id: 1, category_id: 1, provider_id: 1)
    Product.create!(title: "Lạp sườn Fansipan", name: "Lạp sườn Fansipan", image: "product/lap_suon.jpg", price: 120000,
      discount: 10, status: "Còn hàng", quantity: 1000, region_id: 1, category_id: 1, provider_id: 1)
    Product.create!(title: "Thuốc Tắm Dao Đỏ", name: "Thuốc Tắm Dao Đỏ", image: "product/thuoc_tam_giao_do.jpg", price: 200000,
      discount: 10, status: "Còn hàng", quantity: 1000, region_id: 1, category_id: 1, provider_id: 1)
    Product.create!(title: "Mít sấy hương vị tự nhiên", name: "Mít sấy hương vị tự nhiên", image: "product/mit_say.jpg", price: 150000,
      discount: 10, status: "Còn hàng", quantity: 1000, region_id: 1, category_id: 1, provider_id: 1)

      # Central Products
    Product.create!(title: "Cu đơ Hà Tĩnh", name: "Cu đơ Hà Tĩnh", image: "product/cu_do.jpg", price: 650000,
      discount: 10, status: "Còn hàng", quantity: 1000, region_id: 2, category_id: 1, provider_id: 1)
    Product.create!(title: "Sá Sùng", name: "Sá Sùng", image: "product/sa_sung.jpg", price: 400000,
      discount: 10, status: "Còn hàng", quantity: 1000, region_id: 2, category_id: 1, provider_id: 1)
    Product.create!(title: "Khô gà xé cay", name: "Khô gà xé cay", image: "product/ga_xe_cay.jpg", price: 130000,
      discount: 10, status: "Còn hàng", quantity: 1000, region_id: 2, category_id: 1, provider_id: 1)
    Product.create!(title: "Bánh tráng Bình Định", name: "Bánh tráng Bình Định", image: "product/banh_trang.jpg", price: 70000,
      discount: 10, status: "Còn hàng", quantity: 1000, region_id: 2, category_id: 1, provider_id: 1)
    Product.create!(title: "Viên Hà Thủ Ô", name: "Viên Hà Thủ Ô", image: "product/ha_thu_o.jpg", price: 160000,
      discount: 10, status: "Còn hàng", quantity: 1000, region_id: 2, category_id: 1, provider_id: 1)
    Product.create!(title: "Tôm chua nõn nhỏ", name: "Tôm chua nõn nhỏ", image: "product/tom_chua.jpg", price: 65000,
      discount: 10, status: "Còn hàng", quantity: 1000, region_id: 2, category_id: 1, provider_id: 1)
    Product.create!(title: "Hạt Sen Khô", name: "Hạt Sen Khô", image: "product/sen_kho.jpg", price: 30000,
      discount: 10, status: "Còn hàng", quantity: 1000, region_id: 2, category_id: 1, provider_id: 1)
    
    # South Products
    Product.create!(title: "Muối tôm Tây Ninh", name: "Muối tôm Tây Ninh", image: "product/muoi_tom.jpg", price: 55000,
      discount: 10, status: "Còn hàng", quantity: 1000, region_id: 3, category_id: 1, provider_id: 1)
    Product.create!(title: "Thèo lèo Tây Ninh", name: "Thèo lèo Tây Ninh", image: "product/theo_leo.jpg", price: 20000,
      discount: 10, status: "Còn hàng", quantity: 1000, region_id: 3, category_id: 1, provider_id: 1)
    Product.create!(title: "Nem bưởi", name: "Nem bưởi", image: "product/nem_buoi.jpg", price: 650000,
      discount: 10, status: "Còn hàng", quantity: 1000, region_id: 3, category_id: 1, provider_id: 1)
    Product.create!(title: "Nho Phan Giang", name: "Nho Phan Giang", image: "product/nho.jpg", price: 70000,
      discount: 10, status: "Còn hàng", quantity: 1000, region_id: 3, category_id: 1, provider_id: 1)
    Product.create!(title: "Bánh tét Cần Thơ", name: "Bánh tét Cần Thơ", image: "product/banh_tet.jpg", price: 80000,
      discount: 10, status: "Còn hàng", quantity: 1000, region_id: 3, category_id: 1, provider_id: 1)
    Product.create!(title: "Bánh Pía Sài Gòn", name: "Bánh Pía Sài Gòn", image: "product/banh_pia.jpg", price: 10000,
      discount: 10, status: "Còn hàng", quantity: 1000, region_id: 3, category_id: 1, provider_id: 1)
    Product.create!(title: "Rượu Dừa Bến Tre", name: "Rượu Dừa Bến Tre", image: "product/ruou_dua.jpg", price: 85000,
      discount: 10, status: "Còn hàng", quantity: 1000, region_id: 3, category_id: 1, provider_id: 1)
  end
end
