cask "aeon" do
  version "0.1.5"
  sha256 "954c0877879379a98f377c641c3876c0e22ac1c40a7401c6a96c42a1e089c539"

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
  depends_on macos: :ventura

  app "Aeon.app"

  zap trash: [
    "~/Library/Application Support/Aeon",
    "~/Library/Caches/Aeon",
    "~/Library/Preferences/io.github.alimaslax.aeon.plist",
  ]
end
