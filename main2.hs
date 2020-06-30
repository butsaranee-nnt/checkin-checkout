type RoomNo = String
type KeycardID = String
type NumberOfFloor= Int
type NumberOfRoomPerFloor = Int

-- TODO : Floor เปลี่ยนเป็น FloorNumber
type Floor = Int

-- TODO : hotel เก็บ room ที่เป็น object
data Hotel = Hotel { rooms :: [Room]
                   }

data Guest = Guest{ name :: String
                  , age :: Int
                  }

data BookingRecord = BookingRecord { roomNo :: RoomNo
                                   , guest :: Guest 
                                   }

-- TODO : Keycard ไม่ควรเก็บข้อมูล bookingrecord
data Keycard = Keycard { keycardID :: KeycardID
                       , bookingRecord :: BookingRecord
                       }

-- TODO : ชื่อฟังกฺชั่นใช้ s ให้ถูก

-- create_hotel

generateRooms :: NumberOfFloor -> NumberOfRoomPerFloor -> [Room]
generateRooms = undefined

generateKeycards :: NumberOfRoom -> [Keycard]
generateKeycards = undefined



-- book

book :: Hotel -> RoomNo -> Guest -> BookingRecord
book = undefined

isAvailableRoom :: Hotel -> RoomNo -> [BookingRecord] -> Bool
isAvailableRoom = undefined

collectRecord :: RoomNo -> Guest -> BookingRecord
collectRecord = undefined

-- TODO : ควรมีข้อมูลเช็คอินเก็บไว้เองที่โรงแรม

-- checkin

checkIn :: Hotel -> BookingRecord -> Keycard
checkIn = undefined 

    -- isFisrtTimeBook :: 

getKeycard :: [Keycard] -> BookingRecord -> Keycard
getKeycard = undefined

firstAvailableKeycardId :: [Keycard] -> Keycard
firstAvailableKeycardId = undefined -- = fst (filter isAvailableKeycard keycards)

isAvailableKeycard :: Keycard -> Bool
isAvailableKeycard = undefined

addDataInKeycard :: Keycard -> BookingRecord -> Keycard
addDataInKeycard = undefined


-- findKeycard :: [Keycard] -> KeycardID -> Keycard
-- findKeycard = undefined
-- check out

checkOut :: Hotel -> [Keycard] -> Guest -> Keycard -> Bool
checkOut = undefined  -- isMatch (findKeycard)

isMatch :: Keycard -> Guest -> Bool   
isMatch = undefined

removeDataInKeycard :: KeycardID -- (procedure)
removeDataInKeycard = undefined

removeDataInRecord :: RoomNo -- (procedure)
removeDataInRecord = undefined

-- TODO : คือ keycard เข้าไปในกอง keycard

-- list_available_rooms

getAvailableRooms :: Hotel -> [BookingRecord] -> [RoomNo]
getAvailableRooms = undefined -- filter isAvailableRoom [room]



-- list_guest

getGuests :: [BookingRecord] -> [Guest]
getGuests = undefined

-- get_guest_in_room 
getGuestByRoomNumber :: RoomNo -> [BookingRecord] -> Guest
getGuestByRoomNumber = undefined


-- list_guest_by_age

filterGuestsByAge :: (a -> Bool) -> [Guest] -> [Guest]
filterGuestsByAge = undefined

getGuestsByAge :: (a -> Bool) -> [BookingRecord] -> [Guest]
getGuestsByAge = undefined -- filterGuestsByAge(getGuests())



-- list_guest_by_floor

getGuestsByFloor :: Floor -> [BookingRecord] -> [Guest]
getGuestsByFloor = undefined -- findGuestsByFloor(findRoomByFloor())

findRoomsByFloor :: Floor -> [Room]
findRoomsByFloor = undefined

findGuestsByRooms :: [Room] -> [BookingRecord] -> [Guest]
findGuestsByRooms = undefined



-- checkout_guest_by_floor

checkOutByFloor :: Hotel -> Floor -> [BookingRecord] -> Bool
checkOutByFloor = undefined -- removeRecord(findRoomByFloor()), removeKeycard(getKeycardByBookingRecord())

getKeycardByBookingRecord :: BookingRecord -> Keycard
getKeycardByBookingRecord = undefined



-- book_by_floor
bookByFloor :: Hotel -> Floor -> Guest -> [BookingRecord]
bookByFloor = undefined -- map (book, findRoomByFloor)

checkInByFloor :: Hotel -> [BookingRecord] -> [Keycard]
checkInByFloor = undefined -- map (checkIn, bookByFloor)