cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.575-cypheria"
  sha256 arm:   "422410f293b5fbfa420106284d7a2b3b2a47351edacf394e7c47a525d444c394",
         intel: "f3d6e94848362ae2cfa8d255d86c2c62cb687616a8ef49bfa97ec2206e60d2f8"

  url "https://github.com/cypheriaweb3/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
