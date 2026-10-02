cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.675"
  sha256 arm:   "b531fad5503d6ccbd8605707a8bf99d7c0dfcdff9038b76f088ed4baee865628",
         intel: "834dd635fbce6f7a4caedd44c328acb0114d9bbe1256c96ccfca24b5055a6b13"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
