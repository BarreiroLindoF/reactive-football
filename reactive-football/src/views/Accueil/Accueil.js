import React, { Component } from 'react';
import { Line } from 'react-chartjs-2';
import { Row, Col, Container } from 'reactstrap';

import TableJoueurs from '../../components/Tables/TableJoueurs.js';

import './styles.css';

// Social Box Chart
const socialBoxData = [
  { data: [65, 59, 84, 84, 90, 92, 95], label: 'Facebook' },
  { data: [1, 13, 9, 17, 34, 41, 38], label: 'Twitter' },
  { data: [78, 81, 80, 45, 34, 12, 40], label: 'Linkedin' },
  { data: [35, 23, 56, 22, 97, 23, 64], label: 'Google' }
];

const makeSocialBoxData = (dataSetNo) => {
  const dataset = socialBoxData[dataSetNo];
  const data = {
    labels: ['Juillet', 'Août', 'Septembre', 'Octobre', 'Novembre', 'Décembre', 'Janvier'],
    datasets: [
      {
        backgroundColor: 'rgba(255,255,255,.1)',
        borderColor: 'rgba(255,255,255,.55)',
        pointHoverBackgroundColor: '#fff',
        borderWidth: 2,
        data: dataset.data,
        label: dataset.label,
      }
    ]
  };
  return () => data;
};

const socialChartOpts = {
  responsive: true,
  maintainAspectRatio: false,
  legend: {
    display: false
  },
  scales: {
    xAxes: [{
      display: false
    }],
    yAxes: [{
      display: false
    }]
  },
  elements: {
    point: {
      radius: 0,
      hitRadius: 10,
      hoverRadius: 4,
      hoverBorderWidth: 3
    }
  }
};

class Accueil extends Component {

  render() {
    return (
      <div className="animated fadeIn">
        <Container>
          <div className="welcome">
            <Row>
              <Col lg="12">
                Bienvenue sur la page de Reactive-Football
            </Col>
            </Row>
            <Row>
              <Col lg="12">
                <img src={'https://images.cdn.fourfourtwo.com/sites/fourfourtwo.com/files/swiss_team_0.jpg'} />
              </Col>
            </Row>
          </div>
          <Row>
            <Col lg="12" >
              <div className="text-center">
                Suivez nous sur les réseaux sociaux!
          </div>
            </Col>
          </Row>
          <Row>
            <Col xs="6" sm="6" lg="3">
              <div className="social-box facebook clickable" onClick={() => window.open('https://www.facebook.com/footballfrance.fr/', '_newtab')}>
                <i className="fa fa-facebook"></i>
                <div className="chart-wrapper">
                  <Line data={makeSocialBoxData(0)} options={socialChartOpts} height={90} />
                </div>
                <ul>
                  <li>
                    <strong>89k</strong>
                    <span>amis</span>
                  </li>
                  <li>
                    <strong>459</strong>
                    <span>publications</span>
                  </li>
                </ul>
              </div>
            </Col>

            <Col xs="6" sm="6" lg="3">
              <div className="social-box twitter clickable" onClick={() => window.open('https://twitter.com/footballfrance_?lang=fr', '_newtab')}>
                <i className="fa fa-twitter"></i>
                <div className="chart-wrapper">
                  <Line data={makeSocialBoxData(1)} options={socialChartOpts} height={90} />
                </div>
                <ul>
                  <li>
                    <strong>973k</strong>
                    <span>followers</span>
                  </li>
                  <li>
                    <strong>1.792</strong>
                    <span>tweets</span>
                  </li>
                </ul>
              </div>
            </Col>

            <Col xs="6" sm="6" lg="3">

              <div className="social-box linkedin clickable" onClick={() => window.open('https://www.linkedin.com/company/16825/', '_newtab')}>
                <i className="fa fa-linkedin"></i>
                <div className="chart-wrapper">
                  <Line data={makeSocialBoxData(2)} options={socialChartOpts} height={90} />
                </div>
                <ul>
                  <li>
                    <strong>500+</strong>
                    <span>contacts</span>
                  </li>
                  <li>
                    <strong>292</strong>
                    <span>publications</span>
                  </li>
                </ul>
              </div>
            </Col>

            <Col xs="6" sm="6" lg="3">
              <div className="social-box google-plus clickable" onClick={() => window.open('https://plus.google.com/+ToulouseFC', '_newtab')}>
                <i className="fa fa-google-plus"></i>
                <div className="chart-wrapper">
                  <Line data={makeSocialBoxData(3)} options={socialChartOpts} height={90} />
                </div>
                <ul>
                  <li>
                    <strong>894</strong>
                    <span>followers</span>
                  </li>
                  <li>
                    <strong>92</strong>
                    <span>cercles</span>
                  </li>
                </ul>
              </div>
            </Col>
          </Row>
        </Container>
      </div>
    )
  }
}

export default Accueil;
