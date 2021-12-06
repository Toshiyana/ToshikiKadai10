//
//  ViewController.swift
//  10
//
//  Created by Toshiyana on 2021/12/06.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var tableView: UITableView!

    let prefectures = PrefectureData().prefecures

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(PrefectureCell.nib(), forCellReuseIdentifier: PrefectureCell.identifier)
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return prefectures.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: PrefectureCell.identifier,
            for: indexPath
        ) as? PrefectureCell else {
            return UITableViewCell()
        }

        cell.configure(name: prefectures[indexPath.row], index: indexPath.row)

        return cell
    }
}
