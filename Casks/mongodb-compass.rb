cask "mongodb-compass" do
  version "1.29.0"
  sha256 "697dff895df4581ad3fc6573cb46affe573b1054c2ec8130caee88d4f43fef19"

  url "https://downloads.mongodb.com/compass/mongodb-compass-#{version}-darwin-x64.dmg"
  name "MongoDB Compass"
  desc "Explore and manipulate your MongoDB data"
  homepage "https://www.mongodb.com/products/compass"

  livecheck do
    url "https://info-mongodb-com.s3.amazonaws.com/com-download-center/compass.json"
    regex(/"version"\s*:\s*"(\d+(?:\.\d+)+)\s*\(Stable/i)
  end

  app "MongoDB Compass.app"

  zap trash: [
    "~/Library/Application Support/MongoDB Compass",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.mongodb.compass.sfl*",
    "~/Library/Caches/MongoDB Compass/",
    "~/Library/Preferences/com.mongodb.compass.plist",
    "~/Library/Saved Application State/com.mongodb.compass.savedState",
  ]
end
