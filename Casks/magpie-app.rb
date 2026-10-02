cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.643"
  sha256 arm:   "0ba11a8b36c32ec08c1e59b0220592eb2dc9282c24e29ccd852f2bcc567fb3a5",
         intel: "49feceddecfa11b8fe26e194ee09edd5873d8bf301bbd89da3cd4e5534063eca"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
