cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.200"
  sha256 arm:   "e7a73fb60f9133eecd93954bef1027e210ea6f677a48095f2be5f9db95c9870e",
         intel: "088878df81ddcdabc3f731fb58bdbac85ea26ed4673362ea8ccd678328eec5c5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
