# frozen_string_literal: true

# app/services/application_service.rb
class ApplicationService
  def self.call(*args, &block)
    new(*args, &block).call
  end
end
##*args: (Splat operator) ใช้รับอาร์กิวเมนต์กี่ตัวก็ได้ที่ส่งเข้ามา แล้วเก็บไว้ในรูปแบบ Array
# &block: ใช้รับ Block (โค้ดที่อยู่ใน do...end หรือ {...}) ถ้ามีการส่งเข้ามาด้วย
# .call: หลังจากสร้าง Instance เสร็จแล้ว ให้เรียกใช้ Instance Method ที่ชื่อว่า call ทันที