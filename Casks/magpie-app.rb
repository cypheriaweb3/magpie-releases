cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.623"
  sha256 arm:   "490bd7cf1228eed2b381a69087ff4c0e689c9e27acbe8c059a5585b551566ba4",
         intel: "83b615482e8538d40ffed2e365e4a2444d593705d31edfb567ae6a1e364c0cf6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
