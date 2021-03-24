namespace :db do
  task faker_products: :environment do
    puts "Create Product"
    # North Products
    Product.create!(title: "Thịt trâu sấy", name: "Thịt trâu sấy", image: File.open(Rails.root + "app/assets/images/product/thit_trau_say.jpg"), price: 100000,
      discount: 10, status: 1, quantities: 1000, region_id: 1, category_id: 1, provider_id: 1)
    Product.create!(title: "Bánh Đậu Xanh Hải Dương", name: "Bánh Đậu Xanh Hải Dương", image: File.open(Rails.root + "app/assets/images/product/dau_xanh.jpg"), price: 18000,
      discount: 10, status: 1, quantities: 1000, region_id: 1, category_id: 1, provider_id: 1)
    Product.create!(title: "Su su Tam Đảo Vĩnh Phúc", name: "Su su Tam Đảo Vĩnh Phúc", image: File.open(Rails.root + "app/assets/images/product/su_su.jpg"), price: 99000,
      discount: 10, status: 1, quantities: 1000, region_id: 1, category_id: 1, provider_id: 1)
    Product.create!(title: "Măng Nứa Tuyên Quang", name: "Măng Nứa Tuyên Quang", image: File.open(Rails.root + "app/assets/images/product/mang_nua.jpg"), price: 20000,
      discount: 10, status: 1, quantities: 1000, region_id: 1, category_id: 1, provider_id: 1)
    Product.create!(title: "Chè Thái Nguyên", name: "Chè Thái Nguyên", image: File.open(Rails.root + "app/assets/images/product/che_thai_nguyen.jpg"), price: 50000,
      discount: 10, status: 1, quantities: 1000, region_id: 1, category_id: 1, provider_id: 1)
    Product.create!(title: "Gạo nếp nương Điện Biên", name: "Gạo nếp nương Điện Biên", image: File.open(Rails.root + "app/assets/images/product/nep_nuong.jpg"), price: 60000,
      discount: 10, status: 1, quantities: 1000, region_id: 1, category_id: 1, provider_id: 1)
    Product.create!(title: "Bánh đa Kế", name: "Bánh đa Kế", image: File.open(Rails.root + "app/assets/images/product/banh_da_ke.jpg"), price: 30000,
      discount: 10, status: 1, quantities: 1000, region_id: 1, category_id: 1, provider_id: 1)
    Product.create!(title: "Lạp sườn Fansipan", name: "Lạp sườn Fansipan", image: File.open(Rails.root + "app/assets/images/product/lap_suon.jpg"), price: 120000,
      discount: 10, status: 1, quantities: 1000, region_id: 1, category_id: 1, provider_id: 1)
    Product.create!(title: "Thuốc Tắm Dao Đỏ", name: "Thuốc Tắm Dao Đỏ", image: File.open(Rails.root + "app/assets/images/product/thuoc_tam_giao_do.jpg"), price: 200000,
      discount: 10, status: 1, quantities: 1000, region_id: 1, category_id: 1, provider_id: 1)
    Product.create!(title: "Mít sấy hương vị tự nhiên", name: "Mít sấy hương vị tự nhiên", image: File.open(Rails.root + "app/assets/images/product/mit_say.jpg"), price: 150000,
      discount: 10, status: 1, quantities: 1000, region_id: 1, category_id: 1, provider_id: 1)

      # Central Products
    Product.create!(title: "Cu đơ Hà Tĩnh", name: "Cu đơ Hà Tĩnh", image: File.open(Rails.root + "app/assets/images/product/cu_do.jpg"), price: 650000,
      discount: 10, status: 1, quantities: 1000, region_id: 2, category_id: 1, provider_id: 1)
    Product.create!(title: "Sá Sùng", name: "Sá Sùng", image: File.open(Rails.root + "app/assets/images/product/sa_sung.jpg"), price: 400000,
      discount: 10, status: 1, quantities: 1000, region_id: 2, category_id: 1, provider_id: 1)
    Product.create!(title: "Khô gà xé cay", name: "Khô gà xé cay", image: File.open(Rails.root + "app/assets/images/product/ga_xe_cay.jpg"), price: 130000,
      discount: 10, status: 1, quantities: 1000, region_id: 2, category_id: 1, provider_id: 1)
    Product.create!(title: "Bánh tráng Bình Định", name: "Bánh tráng Bình Định", image: File.open(Rails.root + "app/assets/images/product/banh_trang.jpg"), price: 70000,
      discount: 10, status: 1, quantities: 1000, region_id: 2, category_id: 1, provider_id: 1)
    Product.create!(title: "Viên Hà Thủ Ô", name: "Viên Hà Thủ Ô", image: File.open(Rails.root + "app/assets/images/product/ha_thu_o.jpg"), price: 160000,
      discount: 10, status: 1, quantities: 1000, region_id: 2, category_id: 1, provider_id: 1)
    Product.create!(title: "Tôm chua nõn nhỏ", name: "Tôm chua nõn nhỏ", image: File.open(Rails.root + "app/assets/images/product/tom_chua.jpg"), price: 65000,
      discount: 10, status: 1, quantities: 1000, region_id: 2, category_id: 1, provider_id: 1)
    Product.create!(title: "Hạt Sen Khô", name: "Hạt Sen Khô", image: File.open(Rails.root + "app/assets/images/product/sen_kho.jpg"), price: 30000,
      discount: 10, status: 1, quantities: 1000, region_id: 2, category_id: 1, provider_id: 1)

    # South Products
    Product.create!(title: "Muối tôm Tây Ninh", name: "Muối tôm Tây Ninh", image: File.open(Rails.root + "app/assets/images/product/muoi_tom.jpg"), price: 55000,
      discount: 10, status: 1, quantities: 1000, region_id: 3, category_id: 1, provider_id: 1)
    Product.create!(title: "Thèo lèo Ninh Thuận", name: "Thèo lèo Ninh Thuận", image: File.open(Rails.root + "app/assets/images/product/theo_leo.jpg"), price: 20000,
      discount: 10, status: 1, quantities: 1000, region_id: 3, category_id: 1, provider_id: 1)
    Product.create!(title: "Nem bưởi", name: "Nem bưởi", image: File.open(Rails.root + "app/assets/images/product/nem_buoi.jpg"), price: 650000,
      discount: 10, status: 1, quantities: 1000, region_id: 3, category_id: 1, provider_id: 1)
    Product.create!(title: "Nho Phan Giang", name: "Nho Phan Giang", image: File.open(Rails.root + "app/assets/images/product/nho.jpg"), price: 70000,
      discount: 10, status: 1, quantities: 1000, region_id: 3, category_id: 1, provider_id: 1)
    Product.create!(title: "Bánh tét Cần Thơ", name: "Bánh tét Cần Thơ", image: File.open(Rails.root + "app/assets/images/product/banh_tet.jpg"), price: 80000,
      discount: 10, status: 1, quantities: 1000, region_id: 3, category_id: 1, provider_id: 1)
    Product.create!(title: "Bánh Pía Sài Gòn", name: "Bánh Pía Sài Gòn", image: File.open(Rails.root + "app/assets/images/product/banh_pia.jpg"), price: 10000,
      discount: 10, status: 1, quantities: 1000, region_id: 3, category_id: 1, provider_id: 1)
    Product.create!(title: "Rượu Dừa Bến Tre", name: "Rượu Dừa Bến Tre", image: File.open(Rails.root + "app/assets/images/product/ruou_dua.jpg"), price: 85000,
      discount: 10, status: 1, quantities: 1000, region_id: 3, category_id: 1, provider_id: 1)
  end
end
