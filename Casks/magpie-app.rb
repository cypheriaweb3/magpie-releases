cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.857"
  sha256 arm:   "58001f31efded5c86731ad50559e16faa9ba236362fd9912620b876dc63017a6",
         intel: "4f2a8fb9fcc34b7eaa059dc9907c8000bc05d4abd26135df1aec91c5371f160f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
