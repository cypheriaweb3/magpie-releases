cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.161"
  sha256 arm:   "d47a5bd8b31237536c4cde8a0181f234b7f3c0805d8a950652a7b35e189cb5a8",
         intel: "87e1b39cf984e627c5de94de7a3f657fc3614887207433d55b39a0ecc5fe6fcc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
