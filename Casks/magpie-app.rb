cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.512"
  sha256 arm:   "7593996adb996c42fd6194651ca4d75c2eeca690b7bcd728a3ed916a47f2f6a9",
         intel: "2e6dbbe54a1d584d835c042f292876e8a3dbe79f4c7ef265a9abd1893b014e49"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
