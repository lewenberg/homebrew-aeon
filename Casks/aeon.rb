cask "aeon" do
  version "0.1.7"
  sha256 "abbf4c95ac1b966681cc0bcd9f5d8eeb73f960c485e138cf96826235c14e914b"

  url "https://mmokndnllacsauploqlf.supabase.co/functions/v1/api/download/mac-arm64?version=#{version}"
  name "Aeon"
  desc "Web browser with an agent that runs errands in windows you can watch"
  homepage "https://mmokndnllacsauploqlf.supabase.co/functions/v1/api/"

  livecheck do
    url "https://mmokndnllacsauploqlf.supabase.co/functions/v1/api/v1/update?platform=mac-arm64&version=0.0.0"
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
