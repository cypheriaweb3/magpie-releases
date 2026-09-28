cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.329"
  sha256 arm:   "99924ab3d2e3075c537645209d15e5c0bc93ae58679ac19f958097b05e2926b9",
         intel: "51a51f3a69188ecb8b8d2cbcf50a67fd0a0810ecc43dd57fee823769896acacb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
