cask "aeon" do
  version "0.1.4"
  sha256 "ead844c619d51d69deb8c4668a2c816fe08db3e955f0ae1b9ace235e739d5748"

  url "https://aeon-api-685636195440.us-central1.run.app/download/mac-arm64?version=#{version}"
  name "Aeon"
  desc "Web browser with an agent that runs errands in windows you can watch"
  homepage "https://aeon-api-685636195440.us-central1.run.app/"

  livecheck do
    url "https://aeon-api-685636195440.us-central1.run.app/v1/update?platform=mac-arm64&version=0.0.0"
    strategy :json do |json|
      json["latest"]
    end
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Aeon.app"

  zap trash: [
    "~/Library/Application Support/Aeon",
    "~/Library/Caches/Aeon",
    "~/Library/Preferences/io.github.alimaslax.aeon.plist",
  ]
end
